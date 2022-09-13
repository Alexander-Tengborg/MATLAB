% Här specificerar du dina parametervärden
% Först parameternummer
prm=107;
% Frö till slumptalsgeneratorn
seed=370608;
% Ankomstintensitet
lbd=4.2;
% Parametrar i betjäningsfördelningen
% i sim nr 1
alf1=0.0286;
bta1=2;
% Och i sim nr 2
alf2=2.4;
bta2=1;
% Antal data i din skattning av väntevärdet (sim nr 1)
% resp sannolikheten (sim nr 2)
ant1=18;
ant2=54;

% Specificering av parametrarna alfa och beta
% samt stickprovsstorlek i aktuell simulering
%alf=alf1; bta=bta1; ant=ant1; %SIMULERING 1
alf=alf2; bta=bta2; ant=ant2; %SIMULERING 2

% Initiering av slumptalsgenerator
rand('state',seed);

% Initieringar till simuleringen
% Dess längd i tidsenheter
tend=600;
% Klocka
tnow=0;
% Innehåller exittider för kunderna i betjäning
texit=[];
% Loggning av ankomst- och avgångs-tider
tlogg=[0];
% Loggning av typ av tid: 1 om ankomst, -1 om lämnande
elogg=[0];
% Specialloggar för plottningen
tid=[0];
knd=[0];

x_sum = []

% Rulla simuleringen
while tnow<tend
  % När anländer nästa kund
  u=rand;
  t=-log(u)/lbd;
  tbetween=t;
  tnextarri=tnow+tbetween;
  % När är dennes betjäning färdig
  u=rand;
  % Kod 1a start
  %x = (-log(1-u).^(1/bta))/alf; %Denna??
  x = (-log(1-u)/alf).^(1/bta)
  x_sum(end+1) = x;
  %x = (1/alf).*(-log(1-u)).^(1/bta)./alf;
  
  % Kod 1a slut
  tservice=x;
  tnewexit=tnextarri+tservice;
  % Spara kundens exittid
  texit=[texit tnewexit];
  texit=sort(texit);
  % När försvinner nästa kund och nästa och etc
  % om någon försvinner innan nästa ankomst
  while length(texit)>0
    tnextexit=texit(1);
    if tnextexit<tnextarri
      if length(texit)>1
        texit=texit(2:end);
      else
        texit=[];
      end
      tlogg=[tlogg tnextexit];
      elogg=[elogg -1];
      tnow=tlogg(end);
      tid=[tid tnextexit tnextexit]; knd=[knd 0 -1];
    else
      tlogg=[tlogg tnextarri];
      elogg=[elogg 1];
      tnow=tlogg(end);
      tid=[tid tnextarri tnextarri]; knd=[knd 0 1];
      break
    end
  end
end

MEDEL=mean(x_sum)

% Plotta antalet kunder vs tiden
knd=cumsum(knd);
figure(1)
if bta~=1
  plot(tid,knd)
  xlim([100 200])
  title(['Inl 1, simulering 1, prm=' num2str(prm)])
  grid on
else
  plot(tid,knd)
  xlim([100 115])
  title(['Inl 1, simulering 2, prm=' num2str(prm)])
  grid on
end
xlabel('tidsenheter (te)')
ylabel('Antal kunder i kön')

% Extrakt av data till statistikuppgiften
customers=cumsum(elogg);
tpoints=(tend/ant):(tend/ant):tend;
ls=[];
j=1;
for i=2:length(tlogg)
  tthen=tlogg(i-1);
  tnow=tlogg(i);
  if (tthen<=tpoints(j))&(tnow>tpoints(j))
    ls=[ls i];
    j=j+1;
    if j>length(tpoints)
      break
    end
  end
end
data=customers(ls);

dt=data;
while length(dt)>0
  disp(num2str(dt(1:min(20,length(dt)))))
  if length(dt)<=20
    dt=[];
  else
    dt=dt(21:end);
  end
end

f_x = @(x) x.*(alf*bta*x.^(bta-1).*exp(-alf *x.^(bta)));

%Moment av ordning 1 a.k.a. väntevärde
L1 = integral(f_x, 0, Inf)

L2 = mean(data)

W1 = L1/lbd

W2 = L2/lbd

x= 0:0.1:100;
f = (alf*bta*x.^(bta-1).*exp(-alf *x.^(bta)));

f_2 = @(x) (alf*bta*x.^(bta-1).*exp(-alf *x.^(bta)));

integral(f_2, 0, 10)

plot(x, f)

count = 0

for i=1:length(x_sum1)
    for j=1:length(x_sum)
        if x_sum1(i) < x_sum(j)
            count = count + 1
        end
    end
end

count/(length(x_sum1)*length(x_sum))

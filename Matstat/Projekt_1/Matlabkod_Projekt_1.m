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
alf=alf1; bta=bta1; ant=ant1;

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

% Rulla simuleringen
while tnow<tend
  % När anländer nästa kund
  u=rand;
  t=-log(u)/lbd;
  tbetween=t;
  tnextarri=tnow+tbetween;
  % När är dennes betjäning färdig
  u=rand
  % Kod 1a start
  F = @(x) alf.*bta.*(x.^(bta-1)).*exp(-alf.*x.^bta);
  x = u*integral(F, 0, u)
  %x = u*(alf*bta*(u^(bta-1))*exp(-alf*u^bta)) %t;
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


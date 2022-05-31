% H�r specificerar du dina parameterv�rden
% F�rst parameternummer
prm=107;
% Fr� till slumptalsgeneratorn
seed=370608;
% Ankomstintensitet
lbd=4.2;
% Parametrar i betj�ningsf�rdelningen
% i sim nr 1
alf1=0.0286;
bta1=2;
% Och i sim nr 2
alf2=2.4;
bta2=1;
% Antal data i din skattning av v�ntev�rdet (sim nr 1)
% resp sannolikheten (sim nr 2)
ant1=18;
ant2=54;

% Specificering av parametrarna alfa och beta
% samt stickprovsstorlek i aktuell simulering
alf=alf1; bta=bta1; ant=ant1;

% Initiering av slumptalsgenerator
rand('state',seed);

% Initieringar till simuleringen
% Dess l�ngd i tidsenheter
tend=600;
% Klocka
tnow=0;
% Inneh�ller exittider f�r kunderna i betj�ning
texit=[];
% Loggning av ankomst- och avg�ngs-tider
tlogg=[0];
% Loggning av typ av tid: 1 om ankomst, -1 om l�mnande
elogg=[0];
% Specialloggar f�r plottningen
tid=[0];
knd=[0];

% Rulla simuleringen
while tnow<tend
  % N�r anl�nder n�sta kund
  u=rand;
  t=-log(u)/lbd;
  tbetween=t;
  tnextarri=tnow+tbetween;
  % N�r �r dennes betj�ning f�rdig
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
  % N�r f�rsvinner n�sta kund och n�sta och etc
  % om n�gon f�rsvinner innan n�sta ankomst
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
ylabel('Antal kunder i k�n')

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


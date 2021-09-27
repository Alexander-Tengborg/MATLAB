num=conv([1 0.1], [1 10])
den=conv([1 1], [1 1 9])

sys=tf(num,den)

%% Uppgift A

subplot(2,1,1)
bode(sys)

subplot(2,1,2)
pzmap(sys)

%% Uppgift B

omega=[1 3 5]

F=100

Ts=1/F

N=2^13

Tmax=(N-1)*Ts

t=0:Ts:Tmax

x=sin(omega'*t);

% 
% hold on
% axis([0 5 -1.3 1.3])
% 
% x=sin(w(i)*t)
% y=lsim(sys,x,t);
% 
% plot(t,x)
% plot(t,y)

% format short
% for i=1:length(w)
%   subplot(2,2,i)
%   axis([0 5 -1.3 1.3])
%   xlabel('t')
%   ylabel('x')
%   title(append('\omega=',num2str(w(i))))
%   g=evalfr(sys,2)
%   hold on
%   x=sin(w(i)*t)
%   y=lsim(sys,x,t);
%   plot(t,y)
%   plot(t,x)
% end

%% Uppgift C1

num=conv([1 0.1], [1 10])
den=conv([1 1], [1 1 9])

sys=tf(num,den)

omega=[1 3 5]

F=100

Ts=1/F

N=2^13

Tmax=(N-1)*Ts

t=0:Ts:Tmax;

x=sin(omega'*t);

for i=1:3
  %subplot(2,2,i)
  disp(sprintf('Omega = %d:',omega(i)))
  %Raderna nedan ställer in olika inställningar för varje subplot
  %subplot(2,2,i) %Tillåter en att plotta alla signaler samtidigt i egna grafer
  hold on
  axis([0 30*1/omega(i) -5.5 5.5]) %Nu får varje omega lika många perioder
  xlabel('t')
  ylabel('x')
  title(append('\omega = ',num2str(omega(i))))
  
  G=evalfr(sys,j*omega(i)) %Evaluerar överförningsfunktionen sys vid given vinkelfrekvens
  
  g=abs(G) %G är komplex, så dess absolutbelopp ger amplituden för överförningsfunktionen
  a=atan(imag(G)/real(G)); %Beräknar fasförskjutning hos överförningsfunktionen
  
  %Om man vill få vinkeln från ett komplext tal som befinner sig i andra
  %kvadranten så adderar man pi eller 180 grader. På samma sätt så tas pi
  %eller 180 grader bort från ett tal som befinner sig i tredje kvadranten
  if imag(G)>=0 && real(G)<0
      a=(a+pi);
  elseif imag(G)<0 && real(G)<0
      a=(a-pi);
  end
  
  disp(sprintf('Fasskillnad = %f grader\n',a*180/pi))
  
  y=lsim(sys,x(i,:),t); %Utsignalen då fyrkantssignalen x(t) körs igenom systemet G(s)
  ekv2=g*sin(omega(i)*t+a); % Formel från ekvation 2, där G(s):s amplitud och fasförskjutning används
  
  %Plottar alla tre funktioner
  plot(t,x(i,:))
  plot(t,y)
  plot(t,ekv2)
  
  legend('Insignal','Utsignal','Ekvation 2')
end

%% Uppgift C2

w=1

F=100

Ts=1/F

N=2^13

Tmax=(N-1)*Ts

t=0:Ts:Tmax

hold on
%axis([0 5 -1.3 1.3])
axis([0 50 -10.3 10.3])
xlabel('t')
ylabel('x')
title('\omega = 1')

g=evalfr(sys,j*w)
x=sin(w*t);
y=lsim(sys,x,t);

plot(t,y)
plot(t,x)


td=[5; 6; 7; 8; 9]; % t-data
yd=[17.7449; 21.336; 24.1417; 27.0496; 30.0158]; % y-data
A=[[1; 1; 1; 1; 1] td]; % Designmatrisen
At=transpose(A);
(At*A)\(At*yd)
x=A\yd; a=x(1); b=x(2); % Minsta-kvadratl¨osningen
n=length(td); % Antalet m¨atdata
e=norm(A*x-yd)/sqrt(n);

a
b
e


x=linspace(-10,10);

f=@(t)a+b*t;

plot(x,f(x))
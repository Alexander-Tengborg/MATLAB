%Fråga 1
r1=@(t)5*cos(t+0.7)+3*cos(t-0.7);
r2=@(t)5*sin(t+0.7)-3*sin(t-0.7);

tmin=-pi;
tmax=pi;

n=60+1;

t=linspace(tmin,tmax,n);

x=r1(t);
y=r2(t);

Ap=0;
for i=1:n-1
    Ap=Ap+(x(i+1)+x(i))*(y(i+1)-y(i))/2;
end
Ap=abs(Ap)

%Fråga 2

syms t

r1=5*cos(t+0.7)+3*cos(t-0.7);
r2=5*sin(t+0.7)-3*sin(t-0.7);

tmin=-pi;
tmax=pi;

dr1 = diff(r1); %x'(t)
% y*dx = y(t)*x'(t)
f=r2*dr1; % y(t)*x'(t)

Ae=abs(vpa(int(f,[tmin tmax]))) %Area

%Fråga 3

Erel=abs(Ap-Ae)/Ae*100

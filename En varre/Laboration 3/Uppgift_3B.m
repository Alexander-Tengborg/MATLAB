f=@(x)x.^(3/2);
dF=@(x)3/2*sqrt(x);
a=0;
b=6;

Lf=@(x)sqrt(1+(dF(x).^2));

L=integral(Lf,a,b)

%% Uppgift 1

f1=f(a);
f2=f(b);

l=sqrt((f(a)-f(b))^2+(a+b)^2)

%% Uppgift 2
n=16 % ????

x=linspace(a,b,n);

polylen(x,f(x))-L

%% Uppgift 3
n=50

x=linspace(a,b,n);

L50=abs(polylen(x,f(x))-L)

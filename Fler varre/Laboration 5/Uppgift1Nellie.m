%% Sida 2 haha fråga 1
clc

f=@(x)x.^2+x-3;

X=linspace(5,7,9);
I=(1/4)*sum(f(X(2:end)))

a=5;
b=7;
xantalsteg=9;
Lx=(b-a)/xantalsteg;

%Mittpunkt
xmin=a+Lx/2; xmax=b-Lx/2;
x = linspace(xmin, xmax, xantalsteg);
Im = ((b-a)/xantalsteg) * sum(f(x))

%Vänsterrektankel
xmin=a; xmax=b-Lx;
x = linspace(xmin, xmax, xantalsteg);

Iv = ((b-a)/xantalsteg) * sum(f(x))

%Högerrektangel
xmin=a+Lx; xmax=b;
x = linspace(xmin, xmax, (xantalsteg));
Ih = ((b-a)/(xantalsteg)) * sum(f(x))

%% Sida 2 haha fråga 2

f=@(x)x.^2+x-3

X=linspace(7,10,13)
I=(3/12)*sum(f(X))

antalsteg=13;

a=7;
b=10;
Lx=(b-a)/antalsteg;

%Mittpunkt
a=6.875;
b=10.125;
Lx=(b-a)/antalsteg;
xmin=a+Lx/2; xmax=b-Lx/2;
x = linspace(xmin, xmax, xantalsteg);
Im = ((b-a)/xantalsteg) * sum(f(x))

%Vänsterrektankel
a=7;
b=10.25;
Lx=(b-a)/antalsteg;
xmin=a; xmax=b-Lx;
x = linspace(xmin, xmax, xantalsteg);

Iv = ((b-a)/xantalsteg) * sum(f(x))

%Högerrektangel
a=6.8;
b=10;
Lx=(b-a)/antalsteg;
xmin=a+Lx; xmax=b;
x = linspace(xmin, xmax, (xantalsteg));
Ih = ((b-a)/(xantalsteg)) * sum(f(x))
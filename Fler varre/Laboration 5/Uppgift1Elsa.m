%% Fråga 1
f=@(x)x.^3-5*x.^2-4*x-8

a=-1
b=6

I=integral(f,a,b)
disp("I= "+I);


xantalsteg=49;

Lx=(b-a)/xantalsteg;
xmin=a+Lx/2; xmax=b-Lx/2;
x = linspace(xmin, xmax, xantalsteg);

Im49 = ((b-a)/xantalsteg) * sum(f(x));
disp("Im49= "+Im49);

xantalsteg=28;

Lx=(b-a)/xantalsteg;
xmin=a+Lx/2; xmax=b-Lx/2;
x = linspace(xmin, xmax, xantalsteg);

Im28 = ((b-a)/xantalsteg) * sum(f(x));
disp("Im28= "+Im28);

svar=abs(I-Im49)/abs(I-Im28)

%%Fråga 2

f=@(x)x.^3-5*x.^2-4*x-8

a=-1
b=6

I=integral(f,a,b)
disp("I= "+I);

n=100000

xantalsteg=n;

Lx=(b-a)/xantalsteg;
xmin=a+Lx/2; xmax=b-Lx/2;
x = linspace(xmin, xmax, xantalsteg);

Im = ((b-a)/xantalsteg) * sum(f(x));
disp("Im49= "+Im);

C=abs(I-Im)/((6-(-1))/n).^2




%%Sida 2 haha fråga 1

f=@(x)x.^2+x-3

X=7:0.25:10;
I=(3/13)*sum(f(X))

a=7;
b=10;
Lx=0.25;
xantalsteg=(b-a)/Lx;

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

%%Sida 2 haha fråga 2

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
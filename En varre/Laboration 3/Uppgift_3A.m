f=@(x)1.5+sin(0.04*x.^2);
Df=@(x)0.08*x.*cos(0.04*x.^2);
a=0;
b=25;

Vf=@(x)pi*f(x).^2;
V=integral(Vf,a,b)

Af=@(x)2*pi*abs(f(x)).*sqrt(1+Df(x).^2);
A=integral(Af,a,b)
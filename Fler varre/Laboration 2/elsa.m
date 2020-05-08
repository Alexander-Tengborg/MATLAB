f=@(x)(-1/2*(x+9).^4+2*sin(5*x)-4)
dfdx=@(x)(10*cos(5*x)-2*(x+9).^3);

L=@(x,a)(f(a)+dfdx(a).*(x-a));

a=-8.2;
k=dfdx(a)
m=L(0,a)

L=@(x)k*x+m

E=@(x)abs(f(x)-L(x))

x=linspace(-8.3,-8.1);

plot(x,E(x))


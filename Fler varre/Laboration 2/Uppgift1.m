%% Question 1
%https://i.imgur.com/nCa9HSR.png
%https://i.imgur.com/sVQdPst.png

%% Question 2
%https://i.imgur.com/oyrPBRE.png
%https://i.imgur.com/NyVPD99.png
f=@(x)-1/5*(x-5).^3+3*sin(3*x)-22/5;
dfdx=@(x)-3/5*(x-5).^2+9*cos(3*x);

L=@(x,a)(f(a)+dfdx(a).*(x-a));

a=6.2;
k=dfdx(a)
m=L(0,a)

L=@(x)k*x+m

E=@(x)abs(f(x)-L(x))

x=linspace(6.1,6.3);

plot(x,E(x))


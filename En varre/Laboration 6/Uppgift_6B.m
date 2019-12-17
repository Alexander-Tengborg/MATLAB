format short
f=@(x)(cos(x)+sin(x))/(2*exp(x)-x^2);
t=taylor(f,x,'Order',4); %% 4 Istället för 3?
g=double(subs(t, x, 1))

f=@(x)(cos(x)+sin(x))/(2*exp(x)-x^2);

fv=f(1)

diff=abs(fv-g)
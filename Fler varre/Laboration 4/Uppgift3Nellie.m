clc
f = @(x,y)(x.^3+0.5*x.^2+2.9*x.*y+y.^3-0.9*y);
syms x y
Df=@(x)[3*x(1).^2+x(1)+3.1*x(2)
        3.3*x(2).^2+3.1*x(1)-0.8];
    
kmax = 100;          % hur många steg man är villig att gå
tol = 0.5e-4;       % stoppvillkoret (den steglängd som anses oväsentlig)
aktuelltx = [-1; -1]; % startpunkt
for k=1:kmax
   riktning = +Df(aktuelltx);
   dg=@(s) (Df(aktuelltx + s*riktning).' * riktning);
   %sbast = fzero(dg, 0); %Används i andra för optimal steglängd
   sbast=0.04; %Används i första
   steg = sbast * riktning;
   aktuelltx = aktuelltx + sbast * riktning
   if norm(steg) < tol, break, end
end
k
aktuelltx
fmin=f(aktuelltx(1),aktuelltx(2))
format short
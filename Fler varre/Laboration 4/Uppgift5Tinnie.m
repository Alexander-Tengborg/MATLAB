%% Laboration
clc
%f=@(x,y)(0.57*x-0.82*y)./(1+15.5*(-0.42*x-0.91*y).^2+5*(-0.91*x+0.42*y).^2)
f=@(x,y)(0.34*x-0.94*y)./(1+16*(-0.22*x-0.98*y).^2+2*(-0.98*x+0.22*y).^2)

diff(f,x)

Df=@(x)[-25*(57273.*x(1).^2-316686.*x(2).*x(1)-683255.*x(2).^2-21250)./(3369.*x(1).^2+7546.*x(2).*x(1)+19329.*x(2).^2+1250).^2
         25*(908463.*x(2).^2-657186.*x(2).*x(1)-286625.*x(1).^2-58750)./(19329.*x(2).^2+7546.*x(2).*x(1)+3369.*x(1).^2+1250).^2];
     
xi=linspace(-1.3,0.3,100);
yi=linspace(-0.3,1.3,100);  
aktuelltx = [-0.9; 0.78];; % startpunkt
 
kmax = 2.5;          % hur många steg man är villig att gå
tol = 0.5e-4;       % stoppvillkoret (den steglängd som anses oväsentlig)
xk = aktuelltx;     % i xk sparas  punkter man besökt vid SD:s genomgång
for k=1:kmax
   riktning = +Df(aktuelltx);
   dg=@(s) (Df(aktuelltx + s*riktning).' * riktning);
   sbast = fzero(dg, 0);
   steg = sbast * riktning;
   aktuelltx = aktuelltx + sbast * riktning
   xk = [xk, aktuelltx];
   if norm(steg) < tol, break, end
end
 
syms x y
gradf=jacobian(f,[x y])
%   Gradienten
F=@(x) f(x(1, :), x(2, :))
 
xi=linspace(-1.5,0.1,100);
yi=linspace(-0.3,1.2,100);  
 
[X,Y]=meshgrid(xi,yi);
Z=f(X,Y);
 
hold on
contour(X, Y, Z, 20);
plot(xk(1,:), xk(2,:), 'y-o', 'LineWidth', 2);
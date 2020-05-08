%% Laboration 4.3.2
clc
f=@(x,y)(0.34*x+0.94*y)./(1+5*(0.66*x+0.75*y).^2+20*(0.75*x-0.66*y).^2)
Df=@(x)[17./(50*(20*((3*x(1))/4 - (33*x(2))/50).^2 + 5*((33*x(1))/50 + (3*x(2))/4).^2 + 1)) - (((17*x(1))/50 + (47*x(2))/50)*((3357*x(1))/125 - (297*x(2))/20))./(20*((3*x(1))/4 - (33*x(2))/50).^2 + 5*((33*x(1))./50 + (3*x(2))/4).^2 + 1).^2
        47./(50*(20*((3*x(1))/4 - (33*x(2))/50).^2 + 5*((33*x(1))/50 + (3*x(2))/4).^2 + 1)) + (((17*x(1))/50 + (47*x(2))/50)*((297*x(1))/20 - (23049*x(2))/1000))./(20*((3*x(1))/4 - (33*x(2))/50).^2 + 5*((33*x(1))./50 + (3*x(2))/4).^2 + 1).^2 ];
   
xi=linspace(-1.3,0.3,100);
yi=linspace(-1.3,0.2,100);  
aktuelltx = [-0.92 ;-0.96]; % startpunkt 

kmax = 5;          % hur många steg man är villig att gå
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

[X,Y]=meshgrid(xi,yi);
Z=f(X,Y);

hold on
contour(X, Y, Z, F(xk));
plot(xk(1,:), xk(2,:), 'y-o', 'LineWidth', 2);
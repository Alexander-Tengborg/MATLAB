%% Laboration 4.3.2
clc
f=@(x,y)(0.57*x-0.82*y)./(1+15.5*(-0.42*x-0.91*y).^2+5*(-0.91*x+0.42*y).^2)
Df=@(x)[-(200*(7837158.*x(1).^2-22549016.*x(2).*x(1)-28800975.*x(2).^2-1140000))./((137494.*x(1).^2+160524.*x(1).*x(2)+274351.*x(2).^2+20000).^2)
         (400*(11248391.*x(2).^2-15638007.*x(2).*x(1)-10212188.*x(1).^2-820000))./((274351.*x(2).^2+160524.*x(1).*x(2)+137494.*x(1).^2+20000).^2)];
   
xi=linspace(-1.3,0.3,100);
yi=linspace(-0.3,1.3,100);  
aktuelltx = [-0.84; 0.94];; % startpunkt 

kmax = 20;          % hur många steg man är villig att gå
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

xi=linspace(-1.3,0.3,100);
yi=linspace(-0.3,1.3,100);  

[X,Y]=meshgrid(xi,yi);
Z=f(X,Y);

hold on
contour(X, Y, Z, F(xk));
plot(xk(1,:), xk(2,:), 'y-o', 'LineWidth', 2);
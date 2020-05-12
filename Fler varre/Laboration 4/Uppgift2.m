%% 1
syms x y
u=8*x.^3+48.*x.^2*y+96.*x.*y.^2-18.*x.^2-72.*x.*y;


pretty(u)

dx=diff(u,x)

dy=diff(u,y)


dxdx=diff(dx,x)
dxdy=diff(dx,y)

dydx=diff(dy,x)
dydy=diff(dy,y)

%% 2
%f=@(x)[24.*x(1).^2+96.*x(1).*x(2)-36.*x(1)+96.*x(2).^2-72.*x(2); 192.*x(1).*x(2)-72.*x(1)+48.*x(1).^2];

Df=@(x)[48.*x(1)+96.*x(2)-36 96.*x(1)+192.*x(2)-72
        96.*x(1)+192.*x(2)-72 192.*x(1)];

x = [-1.5; 0.8];

det(Df(x))

%fsolve(f,x)

f1=@(x,y)8.*x.^3+48.*x.^2.*y+96.*x.*y.^2-18.*x.^2-72.*x.*y
x1=linspace(-2,2,100);
x2=linspace(-2,2,100);  

[X1,X2]=meshgrid(x1,x2);

Z1=f1(X1,X2); %Z2=f2(X1,X2);

%contour(x1,x2,Z1,50)
surf(X1,X2,Z1)
hold on
%contour(x1,x2,Z2,[0 0],'b')
grid on
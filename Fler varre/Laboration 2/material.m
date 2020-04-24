%% Uppgift 1
f=@(x)0.5.*(x-2).^2-2*cos(2*x)-1.5;
Df=@(x)x-2+4*sin(2*x);

x=linspace(-10,10,100);

L=@(x,a)f(a)+Df(a)*(x-a);

hold on
axis([-10 10 -25 25]);

plot(x,f(x))
plot(x,L(x,-1))
plot(x,L(x,2.5))
plot(x,L(x,2.8))

%% Uppgift 2
f=@(x,y)x.*cos(2*x).*sin(y);
dfdx=@(x,y)sin(y).*(cos(2*x)-2*x.*sin(2*x)); dfdy=@(x,y)x.*cos(2*x).*cos(y);

L=@(x,y,a,b)f(a,b)+dfdx(a,b)*(x-a)+dfdy(a,b)*(y-b);
n=@(x,y)[dfdx(x,y);dfdy(x,y);-1];

a=3; b=1;
p0=[a;b;f(a,b)]; n0=n(a,b);
x=linspace(-4,4,40); y=linspace(-4,4,40);
[X,Y]=meshgrid(x,y);
Z=f(X,Y); T=L(X,Y,a,b);

surf(X,Y,Z)
hold on
surf(X,Y,T,'FaceColor','b','FaceAlpha',0.4);
s=[-1 1];
plot3(p0(1)+s*n0(1),p0(2)+s*n0(2),p0(3)+s*n0(3),'m','linewidth',2);
hold off
xlabel('x'), ylabel('y'), zlabel('z'), box on
axis equal, axis vis3d, rotate3d on

%% Uppgift 3
f=@(x,y)[x.*(1+y.^2)-1; y.*(1+x.^2)-2];


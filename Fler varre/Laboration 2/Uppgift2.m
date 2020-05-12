%% Question 1
%https://i.imgur.com/9ZUyWuu.png
format short
syms f(x,y)
%f(x,y)=1.4*(1+x-y).^2+0.5*(2*y-x+2).^2
f(x,y)=231/(1+0.3*(1+x-y).^2+1.2*(2*y-x+2).^2)
dfdx=diff(f,x)
dfdy=diff(f,y)

a=5; b=4.3;
c=5.15; d=4.12;

L=@(x,y,a,b)f(a,b)+dfdx(a,b)*(x-a)+dfdy(a,b)*(y-b)

f(a,b);


f=f(c,d) % Funktionens värde
L=L(c,d,a,b) % Linjäriseringens värde

Eabs=abs(f-L)
Erel=Eabs/abs(f)*100

%% Question 2
%https://i.imgur.com/SUqwImZ.png
f=@(x,y)0.35*x.^2+0.18*y.^2-0.3*x.*y+0.08*y;

dfdx=@(x,y)0.7*x-0.3*y+0.46; dfdy=@(x,y)0.36*y-0.3*x+0.08;

L=@(x,y,a,b)f(a,b)+dfdx(a,b)*(x-a)+dfdy(a,b)*(y-b);
n=@(x,y)[dfdx(x,y);dfdy(x,y);-1];

a=-1; b=-0.4;
p0=[a;b;f(a,b)]; n0=n(a,b);
x=linspace(-2,0,40); y=linspace(-2,0.5,40);
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

%% Question 3
%https://i.imgur.com/xPVGiR9.png
f=@(x,y)sin(x.*y./2);

dfdx=@(x,y)0.5*y.*cos(x.*y./2); dfdy=@(x,y)0.5*x.*cos(x.*y./2);

L=@(x,y,a,b)f(a,b)+dfdx(a,b)*(x-a)+dfdy(a,b)*(y-b);
n=@(x,y)[dfdx(x,y);dfdy(x,y);-1];

a=2.3; b=2;   % Ytans koordinater
c=-0.9; d=-1.3; % Normalens koordinater
p0=[c;d;f(c,d)]; n0=n(c,d);
x=linspace(-2,3,300); y=linspace(-2,3,300);
[X,Y]=meshgrid(x,y);
Z=f(X,Y); T=L(X,Y,a,b);

surf(X,Y,Z)
hold on
surf(X,Y,T,'FaceColor','b','FaceAlpha',0.4);
s=[-20 20];
plot3(p0(1)+s*n0(1),p0(2)+s*n0(2),p0(3)+s*n0(3),'m','linewidth',2);
hold off
xlabel('x'), ylabel('y'), zlabel('z'), box on
axis equal, axis vis3d, rotate3d on

%% Question 4
%https://i.imgur.com/PxRVv73.png
%https://i.imgur.com/xPVGiR9.png
f=@(x,y)sin(x.*y./2);

dfdx=@(x,y)0.5*y.*cos(x.*y./2); dfdy=@(x,y)0.5*x.*cos(x.*y./2);

L=@(x,y,a,b)f(a,b)+dfdx(a,b)*(x-a)+dfdy(a,b)*(y-b);
n=@(x,y)[dfdx(x,y);dfdy(x,y);-1];

a=2; b=2.3;   % Ytans koordinater
c=-1.2; d=-0.4; % Normalens koordinater
p0=[c;d;f(c,d)]; n0=n(c,d);
x=linspace(-2,3,40); y=linspace(-2,3,40);
[X,Y]=meshgrid(x,y);
Z=f(X,Y); T=L(X,Y,a,b);

surf(X,Y,Z)
hold on
surf(X,Y,T,'FaceColor','b','FaceAlpha',0.4);
s=[-5 5];
plot3(p0(1)+s*n0(1),p0(2)+s*n0(2),p0(3)+s*n0(3),'m','linewidth',2);
hold off
xlabel('x'), ylabel('y'), zlabel('z'), box on
axis equal, axis vis3d, rotate3d on

f=@(x,y)(1/3*x.^2-1).*sin(1-x.*y);
x=linspace(-2,3,30); y=linspace(-1,2,30);
[X,Y]=meshgrid(x,y);
Z=f(X,Y);
surf(X,Y,Z)
grid on, box on
xlabel('x'), ylabel('y'), zlabel('z = f(x,y)')

%% Uppgift 1
f=@(x,y)(-x.*y.*exp(-2*(x.^2+y.^2)));
x=linspace(-2,2,30); y=linspace(-2,2,30);
[X,Y]=meshgrid(x,y);
Z=f(X,Y);
surf(X,Y,Z)
grid on, box on
xlabel('x'), ylabel('y'), zlabel('z = f(x,y)')

%% Uppgift 2a
f=@(x,y)(x+2*y-2);
x=linspace(1,2,20); y=linspace(3,4,20);
[X,Y]=meshgrid(x,y);
Z=f(X,Y);
surf(X,Y,Z)
grid on, box on
xlabel('x'), ylabel('y'), zlabel('z = f(x,y)')

%% Uppgift 2b
f=@(x,y)(x.^2-y.^2);
x=linspace(-2,2,30); y=linspace(-2,2,30);
[X,Y]=meshgrid(x,y);
Z=f(X,Y);
surf(X,Y,Z)
grid on, box on
xlabel('x'), ylabel('y'), zlabel('z = f(x,y)')

%% Uppgift 2c
f=@(x,y)(1-y.^2).^(1/2);
x=linspace(0,3,30); y=linspace(-1,1,30);
[X,Y]=meshgrid(x,y);
Z=f(X,Y);
surf(X,Y,Z)
grid on, box on
xlabel('x'), ylabel('y'), zlabel('z = f(x,y)')

%% Uppgift 2d
f=@(x,y)(y.*exp(-sqrt(x.^2+y.^2)));
x=linspace(-2,2,30); y=linspace(-2,2,30);
[X,Y]=meshgrid(x,y);
Z=f(X,Y);
surf(X,Y,Z)
grid on, box on
xlabel('x'), ylabel('y'), zlabel('z = f(x,y)')

%% Uppgift 3
f=@(x,y)(-6*y./(2+x.^2+y.^2))
x=linspace(-10,10,50); y=linspace(-10,10,50);
[X,Y]=meshgrid(x,y);
Z=f(X,Y);
surf(X,Y,Z)
grid on, box on
xlabel('x'), ylabel('y'), zlabel('z = f(x,y)')

%% Uppgift 4
f=@(x,y)(-x.*y.*exp(-2*(x.^2+y.^2)));
x=linspace(-2,3,30); y=linspace(-1,2,30);
[X,Y]=meshgrid(x,y);
Z=f(X,Y);
contour(X,Y,Z,30) % surfc(X,Y,Z)

%% Uppgift 5
f=@(x,y)(x+2*y-2);
x=linspace(1,2,20); y=linspace(3,4,20);
[X,Y]=meshgrid(x,y);
Z=f(X,Y);
subplot(2,1,1)
surfc(X,Y,Z)
title('Funktionsyta & Nivåkurvor')

f=@(x,y)(x.^2-y.^2);
x=linspace(-2,2,30); y=linspace(-2,2,30);
[X,Y]=meshgrid(x,y);
Z=f(X,Y);
subplot(2,1,2)
surfc(X,Y,Z)
title('Funktionsyta & Nivåkurvor')

%% Frivillig Uppgift
f=@(x,y)(exp(-sqrt(x.^2+y.^2)))
r=linspace(0,2,30); t=linspace(0,2*pi,30);
[R,T]=meshgrid(r,t);
X=R.*cos(T); Y=R.*sin(T);
Z=f(X,Y);
subplot(1,2,1)
surf(X,Y,Z)
title('Funktionsyta')

subplot(1,2,2)
contour(X,Y,Z)
title('Nivåkurvor')
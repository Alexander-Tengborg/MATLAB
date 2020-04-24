%https://i.imgur.com/jiGy1iL.png
%https://i.imgur.com/iskrrYZ.png
%% Del 1
%% Del 2
format long
clc

f1=@(x1,x2)x1.^2-11.*x1.*x2-x2.^2-5.6;
f2=@(x1,x2)x2.^4+x1.^3-0.1;

x1=linspace(-10,10,100);
x2=linspace(-10,10,100);  

[X1,X2]=meshgrid(x1,x2);

Z1=f1(X1,X2); Z2=f2(X1,X2);

contour(x1,x2,Z1,[0 0],'g')
hold on
contour(x1,x2,Z2,[0 0],'b')
grid on

xline(3)
xline(-3)
yline(3)
yline(-3)
%% Del 3
f=@(x)[x(1).^2-11.*x(1).*x(2)-x(2).^2-5.6; x(2).^4+x(1).^3-0.1];

x0=[-0.5; 0.9];

fsolve(f,x0)

%% Del 4
format long
clc

f1=@(x1,x2)x1.^2-11.*x1.*x2-x2.^2-5.6;
f2=@(x1,x2)x2.^4+x1.^3-0.1;

f=@(x)[x(1).^2-11.*x(1).*x(2)-x(2).^2-5.6; x(2).^4+x(1).^3-0.1];

Df=@(x)[2*x(1)-11*x(2) -11*x(1)-2*x(2)
        3*x(1).^2 4*x(2).^3];
    
x1=linspace(-10,10,100);
x2=linspace(-10,10,100);  

[X1,X2]=meshgrid(x1,x2);

Z1=f1(X1,X2); Z2=f2(X1,X2);

contour(x1,x2,Z1,[0 0],'g')
hold on
contour(x1,x2,Z2,[0 0],'b')
grid on

xline(3);
xline(-3);
yline(3);
yline(-3);

x=[-0.5; 0.67];
kmax=100; tol=0.5e-80;
for k=1:kmax
    h=-Df(x)\f(x);
    x=x+h;
    disp([x' norm(h)])
if norm(h)<tol, break, end
end

plot(x(1),x(2),'ro');

%% Del 5
%% Del 6
%% Del 7
%% Del 8
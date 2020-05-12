format short
f1=@(x1,x2)x1.^2+6.9*x1.*x2-x2.^2+3.6;
f2=@(x1,x2)x2.^4-x1.^3-0.1;

x1=linspace(-3,3,30); x2=linspace(-3,3,30);
[X1,X2]=meshgrid(x1,x2);
Z1=f1(X1,X2); Z2=f2(X1,X2);
contour(x1,x2,Z1,[0 0],'g')
hold on
contour(x1,x2,Z2,[0 0],'b')
grid on
f1=@(x)[f1(x(1),x(2))
f2(x(1),x(2))];

f=@(x)[x(1).^2+6.9*x(1).*x(2)-x(2).^2+3.6; x(2).^4-x(1).^3-0.1];
Df=@(x)[2*x(1)+6.9*x(2)  6.9*x(1)-2*x(2); -3*x(1).^2 4*x(2).^3];

format long
x=[0.75; -0.91];
kmax=100; tol=0.5e-80;
for k=1:kmax
h=-Df(x)\f(x);
x=x+h;
disp([x' norm(h)])
if abs(h)<tol, break, end
end
format long

f1=@(x1,x2)x1.^3+x2.^3-1;
f2=@(x1,x2)exp(x1.*x2)+x1+x2-2

f=@(x)[x(1).^3+x(2).^3-1; exp(x(1).*x(2))+x(1)+x(2)-2];

dF=@(x)[3.*x(1).^2 3.*x(2).^2;
    x(2).*exp(x(1).*x(2))+x(1)  x(1).*exp(x(1).*x(2))+x(2)];

x1=linspace(-10,10,100);
x2=linspace(-10,10,100);  

[X1,X2]=meshgrid(x1,x2);
Z1=f1(X1, X2); Z2=f2(X1, X2);
contour(x1,x2,Z1,[0 0],'g')
hold on
contour(x1,x2,Z2,[0 0],'b')
grid on

x=[-0.3;1.7];
kmax=10; tol=0.5e-8;
for k=1:kmax
    h=-Df(x)\f(x);
    x=x+h;
    disp([x' norm(h)])
if norm(h)<tol, break, end
end

plot(x(1),x(2),'ro')
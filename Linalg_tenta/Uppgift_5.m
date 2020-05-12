A=[2 3; 2 1]; u0=[-1; 2];

[V,D]=eig(A);

D
V
F=@(t,u)A*u;
[t,U]=ode45(F,[0 20],u0);

u1=linspace(-4,4,40); u2=linspace(-4,4,30);
%subplot(2,2,1)
hold on
[U1,U2]=meshgrid(u1,u2);
F1=A(1,1)*U1+A(1,2)*U2; F2=A(2,1)*U1+A(2,2)*U2;
quiver(U1,U2,F1,F2,0.9)
plot(U(:,1),U(:,2),'r','LineWidth',2)
plot(V(1,1),V(1,2:end),'b','LineWidth',2)
plot(V(2,1),V(2,2:end),'g','LineWidth',2)
axis([-4 4 -4 4]), axis equal

c=inv(V)*u0

c1=c(1)
c2=c(2)

v1=V(:,1)
v2=V(:,2)

d1=D(1)
d2=D(2,2)

syms t

u1=c1*v1*exp(d1*t)


u2=c2*v2*exp(d2*t)

u1+u2


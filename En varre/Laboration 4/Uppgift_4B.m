hold on
[t,u] = meshgrid(0:0.2:3, 0:0.2:3);
dU = -3*u - sin(t);
L=sqrt(1+dU.^2);
quiver(t, u, 1./L, dU./L);

interval=[0 3];
u0=3;
[t,u]=ode45(@(t,u)-u+sin(4*t)+cos(2*t),interval,u0);
u(end)
plot(t,u,'-o');

u=@(t,u)-u+sin(4*t)+cos(2*t);
[t,u] = min_ode(u,interval,3,0.05);
u(end)
plot(t,u,'-o');


u=@(t,u)-u+sin(4*t)+cos(2*t);
[t,u] = min_ode(u,interval,3,0.001);
u(end)
plot(t,u,'-o');
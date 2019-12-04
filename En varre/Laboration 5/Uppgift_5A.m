% https://www3.nd.edu/~nancy/Math20750/Demos/3dplots/dim3system.html
hold on
interval=[0 2];

u0 = [2.1, 2.1]

f=@(t, u) [1.5*u(1)-u(1)*u(2); u(2)+0.2*u(1)*u(2)-u(2)^2];

[t, u] = ode45(f, interval, u0)

u1 = u(:,1)
u2 = u(:,2)

plot(t, u1, 'g')

plot(t, u2, 'r')
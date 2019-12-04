hold on
interval=[0 100];

u0 = [1.2, 1]

f=@(t, u) [2.5*u(1)-u(1)*u(2); u(2) + 0.8*u(1)*u(2)-u(2)^2];

[t, u] = ode45(f, interval, u0)

u1 = u(:,1)
u2 = u(:,2)

plot(t, u1, 'g')

plot(t, u2, 'r')
u=@(t,u)-u+sin(2*t)+cos(5*t);
interval=[0 4];
[t,u] = min_ode(u,interval,0,0.08);
u(end)
plot(t,u,'-o');
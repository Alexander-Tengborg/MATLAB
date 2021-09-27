U=@(t,u)t.^3;
interval=[0 2];
[t,u] = min_ode(U,interval,0,0.1);
u(end)

hold on

plot(t,u,'-o');

y=(interval.^4)./4+4;

plot(interval,y,'g');
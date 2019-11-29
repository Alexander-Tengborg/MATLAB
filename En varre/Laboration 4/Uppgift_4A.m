interval=[0 1];
u0=3;
[t,u]=ode45(@(t,u)t^5,interval,u0);
subplot(2,2,1);
plot(t,u,'-o');

interval=[0 1];
u0=2;
[t,u]=ode45(@(t,u)u,interval,u0);
subplot(2,2,2);
plot(t,u,'-o');

interval=[0 3.1];
u0=3;
[t,u]=ode45(@(t,u)cos(2*t),interval,u0);
subplot(2,2,3);
plot(t,u,'-o');

interval=[0 2];
u0=3;
[t,u]=ode45(@(t,u)-5*u,interval,u0);
subplot(2,2,4);
plot(t,u,'-o');
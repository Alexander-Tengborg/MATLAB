U=@(t,u)t.^3;
interval=0:0.1:2;
[t,u] = min_ode(U,interval,0,0.1);
u(end)

y=@(t)(t.^4)./4+4;



plot(t,u,'r');
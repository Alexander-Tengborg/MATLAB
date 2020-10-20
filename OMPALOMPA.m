t=linspace(-10,10,1000);

x=@(t)cos(t)+cos(5*t);
y=@(t)sin(4*t);

plot(x(t),y(t))

axis equal

axis([-2 2 -1 1]);

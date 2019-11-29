[t,u] = meshgrid(0:0.2:6, -1:0.2:1);
dU = u - sin(t);
L=sqrt(1+dU.^2);
subplot(2,2,1)
quiver(t, u, 1./L, dU./L);

[t,u] = meshgrid(0:0.2:6, -1:0.2:1);
dU = -u+sin(4*t)+cos(5*t);
L=sqrt(1+dU.^2);
subplot(2,2,2)
quiver(t, u, 1./L, dU./L);

[t,u] = meshgrid(0:0.2:6, -1:0.2:1);
dU = -2*u-sin(t);
L=sqrt(1+dU.^2);
subplot(2,2,3)
quiver(t, u, 1./L, dU./L);

[t,u] = meshgrid(0:0.2:6, -1:0.2:1);
dU = -u+sin(5*t)+cos(4*t)
L=sqrt(1+dU.^2);
subplot(2,2,4)
quiver(t, u, 1./L, dU./L);
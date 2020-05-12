%Funktion 1
umin=-1.8;
umax=1.8;

vmin=-1.8;
vmax=1.8;

punkter=20;

u=linspace(umin,umax,punkter);
v=linspace(vmin,vmax,punkter);
[U,V]=meshgrid(u,v);

X=U.*(1-0.4*V);
Y=U.*(0.4+V);
Z=1.8-V.^2;

hold on;

subplot(2,2,1)

surf(X,Y,Z)
axis equal
title('Funktion 1')

%Funktion 2
umin=-pi;
umax=pi;

vmin=-pi/2;
vmax=pi/2;

punkter=20;

u=linspace(umin,umax,punkter);
v=linspace(vmin,vmax,punkter);

[U,V]=meshgrid(u,v);

X=(10+cos(5.*U.*V)).*cos(U).*cos(V);
Y=(10+cos(5.*U.*V)).*sin(U).*cos(V);
Z=(10+cos(5.*U.*V)).*sin(V);

subplot(2,2,2)

surf(X,Y,Z)
axis equal
title('Funktion 2')

%Funktion 3
umin=-2;
umax=2;

vmin=-pi;
vmax=pi;

punkter=20;

u=linspace(umin,umax,punkter);
v=linspace(vmin,vmax,punkter);

[U,V]=meshgrid(u,v);

X=U.*sin(V+3.8);
Y=U;
Z=-cos(V+3.8);

subplot(2,2,3)
surf(X,Y,Z)
axis equal
title('Funktion 3')
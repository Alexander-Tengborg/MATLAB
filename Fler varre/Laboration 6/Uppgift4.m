%% Fråga 1
F1=@(x,y)sin(-0.06-0.2*y+0.3*x+x.*y);
F2=@(x,y)cos(1.1*x-1.5*y);

xmin=-2;
xmax=2;

ymin=-2;
ymax=2;

punkter=20; %Mer punkter = mindre pilar

[X,Y]=meshgrid(linspace(xmin,xmax,punkter),linspace(ymin,ymax,punkter));
quiver(X,Y,F1(X,Y),F2(X,Y),0.8)
axis equal, axis([xmin xmax ymin ymax])

%% Fråga 2
F=@(t,u)[-0.09-0.3*u(2)-0.3*u(1)-u(1).*u(2); (u(1).^2+2)./(2+3.24*u(2).^2)];%x=u(1), y=u(2)
hold on

xmin=-2;
xmax=2;

ymin=-2;
ymax=2;

st1=[0.7; -0.4]; %Startpunkt 1
st2=[1.1; 0.9]; %Startpunkt 2

hold on
[t,U]=ode45(F,[0 5],st1);
plot(U(:,1),U(:,2),'g','linewidth',2)
[t,U]=ode45(F,[0 5],st2);
plot(U(:,1),U(:,2),'g','linewidth',2)
grid on,axis equal, axis([xmin xmax ymin ymax])

%% Fråga 3
F1=@(x,y)(2*x-y+5).*cos(x-y)
F2=@(x,y)(x-y+3).*cos(x+y)

xmin=-1;
xmax=1;

ymin=-1;
ymax=1;

punkter=20; %Mer punkter = varje pil blir mindre

[X,Y]=meshgrid(linspace(xmin,xmax,punkter),linspace(ymin,ymax,punkter));
quiver(X,Y,F1(X,Y),F2(X,Y),0.8)
grid on, axis equal, axis([xmin xmax ymin ymax])


F=@(t,u)[(2*u(1)-u(2)+5).*cos(u(1)-u(2)); (u(1)-u(2)+3).*cos(u(1)+u(2))];%x=u(1), y=u(2)
hold on

st1=[-1; -0.9]; %Startpunkt 1



hold on
[t,U]=ode45(F,[0 1],st1);
plot(U(:,1),U(:,2),'g','linewidth',2)
[t,U]=ode45(F,[0 1],st2);
plot(U(:,1),U(:,2),'g','linewidth',2)
[t,U]=ode45(F,[0 1],st3);
plot(U(:,1),U(:,2),'g','linewidth',2)
[t,U]=ode45(F,[0 1],st4);
plot(U(:,1),U(:,2),'g','linewidth',2)
grid on,axis equal, axis([xmin xmax ymin ymax])

%% Fråga 4
F1=@(x,y)(2*x-y+5).*cos(x-y)
F2=@(x,y)(x-y+3).*cos(x+y)

xmin=-1;
xmax=1;

ymin=-1;
ymax=1;

punkter=20; %Mer punkter = varje pil blir mindre

[X,Y]=meshgrid(linspace(xmin,xmax,punkter),linspace(ymin,ymax,punkter));
quiver(X,Y,F1(X,Y),F2(X,Y),0.8)
grid on, axis equal, axis([xmin xmax ymin ymax])

F=@(t,u)[(2*u(1)-u(2)+5).*cos(u(1)-u(2)); (u(1)-u(2)+3).*cos(u(1)+u(2))];%x=u(1), y=u(2)
hold on

st1=[-1; -0.9]; %Startpunkt 1
hold on
[t,U]=ode45(F,[0 1],st1);
plot(U(:,1),U(:,2),'g','linewidth',2)

grid on,axis equal, axis([xmin xmax ymin ymax])


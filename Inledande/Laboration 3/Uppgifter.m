%% Uppgift 1
x =(-pi/2)+0.01:0.01:(pi/2)-0.01;
plot(x,tan(x))
grid on
% tan är odefinerad vid -pi/2 och pi/2 radianer, därför används talet s

%% Uppgift 2
x=linspace(0,8);
y=x-x.*cos(7*x);
plot(x,y);
grid on;

%% Uppgift 3
x=linspace(0,14);
plot([0 14],[0 0],'green');
hold on

plot(x,kastbana(x,15)), text(6.4,1.6,'15^o')
plot(x,kastbana(x,30)), text(6.4,3.2,'30^o')
plot(x,kastbana(x,45)), text(6.4,4.6,'45^o')

title('Kastbana med v_0=10 m/s och olika \theta')
xlabel('x'), ylabel('y(x)')
axis equal, axis([0 14 -2 6])

hold off

%% Uppgift 4
t=linspace(0,2*pi);

x1=cos(t)+cos(3*t);
y1=sin(2*t);
subplot(1,2,1)
plot(x1,y1);
axis equal

x2=cos(t)+cos(4*t);
y2=sin(2*t);
subplot(1,2,2)
plot(x2,y2);
axis equal

%% Uppgift 5

t=linspace(0, 2*pi);
x1=cos(t)*5;
y1=sin(t)*5;

hold on;

fill(x1,y1,'g');
axis equal

x2=[cos(pi/4)*5 2 2 -2];
y2=[-2 -2 2 2];

fill(x2,y2,'y');

hold off;

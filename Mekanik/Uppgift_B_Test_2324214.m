x0=0;
v0=1;
y0=0;
u0=1;

T=[0:0.1:30];
[t,x]=ode45(@f,T,[x0;y0;v0;u0])
plot(t,x(:,1));
hold on, plot(t,x(:,2));
function F=f(t,x);
    g=9.82;
    h=0.02;
    L=0.15;

    F=[x(3);
       x(4);
       (2*(x(2)*x(3)^2 + g*sin(x(1)) - ((-1/4*h*x(3)*(2*(x(2)*x(3)^2+g*sin(x(1))))-1/2*(2*(x(2)*x(3)^2+g*sin(x(1))))-x(2)*x(3)^2*x(4)-1/h*x(2)^2*x(3)*(2*(x(2)*x(3)^2+g*sin(x(1))))-1/2*(L^2+h^2)*x(3)*(2*(x(2)*x(3)^2+g*sin(x(1))))*1/h+1/2*g*h*x(3)*sin(x(1))+g*x(2)*x(3)*cos(x(1))+g*sin(x(1))*x(4))/(x(4)-x(2)-1/h*2*x(2)^2*x(3)-1/h*1/6*(L^2 + h^2)*x(3)))))/h;
       (-1/4*h*x(3)*(2*(x(2)*x(3)^2+g*sin(x(1))))-1/2*(2*(x(2)*x(3)^2+g*sin(x(1))))-x(2)*x(3)^2*x(4)-1/h*x(2)^2*x(3)*(2*(x(2)*x(3)^2+g*sin(x(1))))-1/2*(L^2+h^2)*x(3)*(2*(x(2)*x(3)^2+g*sin(x(1))))*1/h+1/2*g*h*x(3)*sin(x(1))+g*x(2)*x(3)*cos(x(1))+g*sin(x(1))*x(4))/(x(4)-x(2)-1/h*2*x(2)^2*x(3)-1/h*1/6*(L^2 + h^2)*x(3))];

end
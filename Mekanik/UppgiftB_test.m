v0=1;

y0=[0;0;0;v0];
tspan=0:0.01:40;
[tsol,ysol]=ode45(@(t,y) pulfun(t,y),tspan,y0);
plot(tsol,ysol)
ysol
function xval =  pulfun(t,y)
    %constant
    
    g=-9.82;
    Bh=0.75;
    h=0.02;
    L=0.15;
    
    %define dy/dt
    xval(1,1)=y(3);
    xval(2,1)=y(4);
    xval(3,1)=(2*g*y(2)*y(3)*cos(y(1))+2*g*y(4)*sin(y(1))+Bh*g*y(3)*sin(y(1))-2*y(4)*y(3)^2*y(2)-g*sin(y(1))-2*y(3)^2*(y(2))*y(4)-Bh*y(3)*(y(3)^2*y(2)-g*sin(y(1))))/(Bh^2*y(3)/2+Bh*y(4)+2*y(3)*y(2)^2+(L^2+h^2)*y(3)/6);
    xval(4,1)=y(3)^2*y(2)-g*sin(y(1));
end
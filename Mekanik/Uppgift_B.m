clc
clf
clear ALL

v0=1;

start = [0; %t�ta0=1 
        0;  %t�ta0'=0
        0;  %z�ta0=0
        v0]; %z�ta0'=v0
    
T=0:0.01:5;

[t,y] = ode45(@U3, T, start);
plot(t,y(:,1),'b',t,y(:,2),'r');
y
%% Functions
function dYdt = U3(t,Y)
    % Y(3) = dT�ta/dt % Y(4) = dZ�ta/dt
    % Y(1) = t�ta(t)  % Y(2) = z�ta(t)
    g=-9.82;
    Bh=0.75;
    h=0.02;
    L=0.15;
    %6*(-(Y(3)^2*Y(2)-g*sin(Y(1)))+Bh*g*Y(3)*sin(Y(1)+2*g*Y(4)*sin(Y(1))+Y(2)*Y(3)*cos(Y(1))))/((L^2+h^2)*Y(1));
    dYdt = [Y(3);
            Y(4);
           (2*Y(4)*Y(3)^2*(1+Y(2))-4*Y(4)*g*sin(Y(1))+h*Y(2)*Y(3)^3-2*Y(3)*h*g*sin(Y(1))+2*Y(2)*Y(4)*Y(3)^2)/(-2*Y(2)^2*Y(3)+2*Y(2)*g*cos(Y(1))-1/6*(L^2+h^2)*Y(3))
            Y(2)*Y(3)^2+g*sin(Y(1))-h/2*(2*Y(4)*Y(3)^2*(1+Y(2))-4*Y(4)*g*sin(Y(1))+h*Y(2)*Y(3)^3-2*Y(3)*h*g*sin(Y(1))+2*Y(2)*Y(4)*Y(3)^2)/(-2*Y(2)^2*Y(3)+2*Y(2)*g*cos(Y(1))-1/6*(L^2+h^2)*Y(3))];
end
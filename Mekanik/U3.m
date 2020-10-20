%% Uppgift 3
clc
clf
clear ALL

start = [1;0;0;0]; %x0=0, x0'=0, X0=0, X0'=0
T = 0:0.1:30;

[t,y] = ode45(@U33, T, start);
plot(t,y(:,1),'b',t,y(:,2),'r');
y
%% Functions
function dYdt = U33(t,Y)
    % Y(3) = dx/dt % Y(4) = dX/dt
    % Y(1) = x(t)  % Y(2) = X(t)
    
    dYdt = [Y(3); Y(4); Y(2)-2*Y(1); Y(1)-2*Y(2)];
end
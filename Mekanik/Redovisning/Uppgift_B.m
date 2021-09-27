%% Uppgift B
clc
clf
clear ALL

%Begynnelsehastigheten i v0
v0=1;

%Begynnelsevärden
start = [0; %täta0=1 
        0;  %täta0'=0
        0;  %zäta0=0
        v0]; %zäta0'=v0

%Tidsintervallet
T=0:0.01:5;

[t,y] = ode45(@F, T, start);
plot(t,y(:,1),'b',t,y(:,2),'r');

disp(y)

function dYdt = F(t,Y)
    % Y(3) = dTäta/dt % Y(4) = dZäta/dt
    % Y(1) = täta(t)  % Y(2) = zäta(t)
    
    g=-9.82;
    h=0.02;
    L=0.15;
    
    dYdt = [Y(3);
            Y(4);
            (2*(Y(2)*Y(3)^2 + g*sin(Y(1)) - ((-1/4*h*Y(3)*(2*(Y(2)*Y(3)^2+g*sin(Y(1))))-1/2*(2*(Y(2)*Y(3)^2+g*sin(Y(1))))-Y(2)*Y(3)^2*Y(4)-1/h*Y(2)^2*Y(3)*(2*(Y(2)*Y(3)^2+g*sin(Y(1))))-1/2*(L^2+h^2)*Y(3)*(2*(Y(2)*Y(3)^2+g*sin(Y(1))))*1/h+1/2*g*h*Y(3)*sin(Y(1))+g*Y(2)*Y(3)*cos(Y(1))+g*sin(Y(1))*Y(4))/(Y(4)-Y(2)-1/h*2*Y(2)^2*Y(3)-1/h*1/6*(L^2 + h^2)*Y(3)))))/h;
            (-1/4*h*Y(3)*(2*(Y(2)*Y(3)^2+g*sin(Y(1))))-1/2*(2*(Y(2)*Y(3)^2+g*sin(Y(1))))-Y(2)*Y(3)^2*Y(4)-1/h*Y(2)^2*Y(3)*(2*(Y(2)*Y(3)^2+g*sin(Y(1))))-1/2*(L^2+h^2)*Y(3)*(2*(Y(2)*Y(3)^2+g*sin(Y(1))))*1/h+1/2*g*h*Y(3)*sin(Y(1))+g*Y(2)*Y(3)*cos(Y(1))+g*sin(Y(1))*Y(4))/(Y(4)-Y(2)-1/h*2*Y(2)^2*Y(3)-1/h*1/6*(L^2 + h^2)*Y(3))];
end
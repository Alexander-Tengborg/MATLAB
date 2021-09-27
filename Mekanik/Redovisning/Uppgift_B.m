%% Uppgift B
clc
clf
clear ALL

%Begynnelsehastigheten i v0
v0=1;

%Begynnelsev�rden
start = [0; %t�ta0=1 
        0;  %t�ta0'=0
        0;  %z�ta0=0
        v0]; %z�ta0'=v0

%Tidsintervallet
T=0:0.01:5;

[t,y] = ode45(@F, T, start);
plot(t,y(:,1),'b',t,y(:,2),'r');

disp(y)

function dYdt = F(t,Y)
    % Y(3) = dT�ta/dt % Y(4) = dZ�ta/dt
    % Y(1) = t�ta(t)  % Y(2) = z�ta(t)
    
    g=-9.82;
    h=0.02;
    L=0.15;
    
    dYdt = [Y(3);
            Y(4);
            (2*(Y(2)*Y(3)^2 + g*sin(Y(1)) - ((-1/4*h*Y(3)*(2*(Y(2)*Y(3)^2+g*sin(Y(1))))-1/2*(2*(Y(2)*Y(3)^2+g*sin(Y(1))))-Y(2)*Y(3)^2*Y(4)-1/h*Y(2)^2*Y(3)*(2*(Y(2)*Y(3)^2+g*sin(Y(1))))-1/2*(L^2+h^2)*Y(3)*(2*(Y(2)*Y(3)^2+g*sin(Y(1))))*1/h+1/2*g*h*Y(3)*sin(Y(1))+g*Y(2)*Y(3)*cos(Y(1))+g*sin(Y(1))*Y(4))/(Y(4)-Y(2)-1/h*2*Y(2)^2*Y(3)-1/h*1/6*(L^2 + h^2)*Y(3)))))/h;
            (-1/4*h*Y(3)*(2*(Y(2)*Y(3)^2+g*sin(Y(1))))-1/2*(2*(Y(2)*Y(3)^2+g*sin(Y(1))))-Y(2)*Y(3)^2*Y(4)-1/h*Y(2)^2*Y(3)*(2*(Y(2)*Y(3)^2+g*sin(Y(1))))-1/2*(L^2+h^2)*Y(3)*(2*(Y(2)*Y(3)^2+g*sin(Y(1))))*1/h+1/2*g*h*Y(3)*sin(Y(1))+g*Y(2)*Y(3)*cos(Y(1))+g*sin(Y(1))*Y(4))/(Y(4)-Y(2)-1/h*2*Y(2)^2*Y(3)-1/h*1/6*(L^2 + h^2)*Y(3))];
end
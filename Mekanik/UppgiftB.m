clc
clf
clear ALL
 
v0=1;
 
%Länk för testräkning av r''-zäta: https://www.wolframalpha.com/input/?i=%28d%5E2%2Fdt%5E2+%28z%28t%29*cos%28o%28t%29%29%29%29*cos%28o%28t%29%29-%28d%5E2%2Fdt%5E2+%28-z%28t%29*sin%28o%28t%29%29%29%29*sin%28o%28t%29%29

start = [0; %täta0=0 
        0;  %täta0'=0 kanske är zäta0=0
        0;  %zäta0=0 kanske är täta0'=0
        v0]; %zäta0'=v0
    
T=0:0.01:10;
 
[t,y] = ode45(@F, T, start);
plot(t,y(:,1),'b',t,y(:,2),'r');
y
%% Functions
function dYdt = F(t,Y)
    % Y(3) = dTäta/dt % Y(4) = dZäta/dt
    % Y(1) = täta(t)  % Y(2) = zäta(t)
    g=-9.82;
    h=0.02;
    L=0.15;
    
    %Första *(-(Y(3)^2*Y(2)-g*sin(Y(1)))+Bh*g*Y(3)*sin(Y(1)+2*g*Y(4)*sin(Y(1))+Y(2)*Y(3)*cos(Y(1))))/((L^2+h^2)*Y(1));
    %Min: (2*g*Y(2)*Y(3)*cos(Y(1))+2*g*Y(4)*sin(Y(1))+Bh*g*Y(3)*sin(Y(1))-2*Y(4)*Y(3)^2*Y(2)-g*sin(Y(1))-2*Y(3)^2*(Y(3)^2*Y(2)-g*sin(Y(1)))*Y(4)-Bh*Y(3)*Y(3)^2*Y(2)-g*sin(Y(1)))/(Bh^2*Y(3)/2+Bh*Y(4)+2*Y(3)*Y(4)^2+(L^2+h^2)*Y(3)/6);
    %Louies: (2*g*Y(2)*Y(3)*cos(Y(1))+2*g*Y(4)*sin(Y(1))+Bh*g*Y(3)*sin(Y(1))-2*Y(4)*Y(3)^2*Y(2)-g*sin(Y(1))-2*Y(3)^2*(Y(2))*Y(4)-Bh*Y(3)*Y(3)^2*Y(2)-g*sin(Y(1)))/(Bh^2*Y(3)/2+Bh*Y(4)+2*Y(3)*Y(4)^2+(L^2+h^2)*Y(3)/6)
    
    %zäta'':             Y(3)^2*Y(2)+g*sin(Y(1))];
    
    %Test 2: (2*h*Y(1)*(ZÄTABIS)+2*Y(2)*Y(3)^2*Y(3)+2*Y(4)*(ZÄTABIS)-g*h*Y(3)*sin(Y(1))-2*g*Y(2)*Y(3)*cos(Y(1))-2*g*Y(4)*sin(Y(1))/(h^2*Y(3)/2+h*Y(4)+2*Y(3)*Y(2)^2+(L^2+h^2)*Y(3)/6);
    
    %täta'' i zäta'':             (g*h*Y(3)*sin(Y(1))+2*g*Y(2)*Y(3)*cos(Y(1))+2*g*Y(4)*sin(Y(1))-h*Y(3)*(Y(2)*Y(3)^2+g*sin(Y(1)))-2*Y(2)*Y(3)^2*Y(4)-2*Y(4)*(Y(2)*Y(3)^2+g*sin(Y(1))))/(1/2*h^2*Y(3)+h*Y(4)+2*Y(2)^2*Y(3)+1/6*(h^2+L^2)*Y(3)-h^2/2*Y(3));
    %                              Y(2)*Y(3)^2+g*sin(Y(1))-h/2*(g*h*Y(3)*sin(Y(1))+2*g*Y(2)*Y(3)*cos(Y(1))+2*g*Y(4)*sin(Y(1))-h*Y(3)*(Y(2)*Y(3)^2+g*sin(Y(1)))-2*Y(2)*Y(3)^2*Y(4)-2*Y(4)*(Y(2)*Y(3)^2+g*sin(Y(1))))/(1/2*h^2*Y(3)+h*Y(4)+2*Y(2)^2*Y(3)+1/6*(h^2+L^2)*Y(3)-h^2/2*Y(3))];
    
    dYdt = [Y(3);
            Y(4); 
            (g*h*Y(3)*sin(Y(1))+2*g*Y(2)*Y(3)*cos(Y(1))+2*g*Y(4)*sin(Y(1))-h*Y(3)*(Y(2)*Y(3)^2+g*sin(Y(1)))-2*Y(2)*Y(3)^2*Y(4)-2*Y(4)*(Y(2)*Y(3)^2+g*sin(Y(1))))/(1/2*h^2*Y(3)+h*Y(4)+2*Y(2)^2*Y(3)+1/6*(h^2+L^2)*Y(3)-h^2/2*Y(3)-h*Y(4));
            Y(2)*Y(3)^2+g*sin(Y(1))-h/2*(g*h*Y(3)*sin(Y(1))+2*g*Y(2)*Y(3)*cos(Y(1))+2*g*Y(4)*sin(Y(1))-h*Y(3)*(Y(2)*Y(3)^2+g*sin(Y(1)))-2*Y(2)*Y(3)^2*Y(4)-2*Y(4)*(Y(2)*Y(3)^2+g*sin(Y(1))))/(1/2*h^2*Y(3)+h*Y(4)+2*Y(2)^2*Y(3)+1/6*(h^2+L^2)*Y(3)-h^2/2*Y(3)-h*Y(4))];
end
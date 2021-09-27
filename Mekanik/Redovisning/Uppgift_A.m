%% Uppgift A
clc
clear ALL

g = -9.82;

%Mackans längd och höjd/tjocklek
L = 0.11;
h = 0.02;

%Bordets höjd
Bh = 0.70;

%Distansen i y-axeln som mackan behöver ha åkt innan man kan bestämma hur
%den landar
rh=-Bh+L/2;

%Antaganden för theta och theta' värde i t=tau
theta_tau = pi/4;
theta_prim_tau = pi;

%Antaganden för zeta och zeta' värde i t=tau
zeta_tau = L/3;
zeta_prim_tau = 0.3;

%Konstanter som ska bestämmas utifrån y''(t)=g
C = -h/2*theta_prim_tau*sin(theta_tau)-zeta_prim_tau*sin(theta_tau)-zeta_tau*theta_prim_tau*cos(theta_tau);
D = h/2*cos(theta_tau)-zeta_tau*sin(theta_tau);

%Nedan fungerar ej, då man inte kan modellera fas 1 på det sättet, så man
%får ansätta att t=0 istället för att t=tau.
%C = -h/2*theta_prim_tau*sin(theta_tau)-zeta_prim_tau*sin(theta_tau)-zeta_tau*theta_prim_tau*cos(theta_tau)-g*tau;
%D = h/2*cos(theta_tau)-zeta_tau*sin(theta_tau)-C*tau-1/2*g*tau^2;

t=-(C+sqrt(C^2-2*g*(D-rh)))/g
tot_rotation = theta_prim_tau*t + theta_tau;
vinkel = mod(tot_rotation,2*pi)

T=0:0.01:t;
ry=@(t)1/2*g*t.^2+C.*t+D;

plot(T,ry(T))
xlabel('t')
ylabel('ry(t)')

-Bh+h/2

if(vinkel < pi/2)
    disp("Mackan landade med marmeladen uppåt :)");
end
if(vinkel > pi/2)
    disp("Mackan landade med marmeladen nedåt :(")
end
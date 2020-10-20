%% Uppgift A
clc

g = -9.82;
tau = 2; 

%Mackans längd och höjd/tjocklek
L = 0.10;
h = 0.01;

%Bordets höjd
Bh = 0.70;

%Distansen i y-axeln som mackan behöver ha åkt innan man kan bestämma hur
%den landar
rh=-Bh+L/2 

theta_tau = pi/4;
theta_prim_tau = pi;

zeta_tau = L/3;
zeta_prim_tau = 1;

C = -h/2*theta_prim_tau*sin(theta_tau)-zeta_prim_tau*sin(theta_tau)-zeta_tau*theta_prim_tau*cos(theta_tau);
D = h/2*cos(theta_tau)-zeta_tau*sin(theta_tau);

%Nedan fungerar ej, då man inte kan modellera fas 1 på det sättet, så man
%får ansätta att t=0 istället för att t=tau.

%C = -h/2*theta_prim_tau*sin(theta_tau)-zeta_prim_tau*sin(theta_tau)-zeta_tau*theta_prim_tau*cos(theta_tau)-g*tau;
%D = h/2*cos(theta_tau)-zeta_tau*sin(theta_tau)-C*tau-1/2*g*tau^2;

t1=-(C+sqrt(C^2-2*g*(D-rh)))/g

t2=(-C+sqrt(C^2-2*g*(D-rh)))/g
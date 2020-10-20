%% Uppgift A
clc

g = -9.82;
tau = 2; 

L = 0.15;
h = 0.01;

Bh = 0.75;

rh=-Bh+L/2

theta_tau = pi/4;
theta_prim_tau = pi;

zeta_tau = L/3;
zeta_prim_tau = 1;

C = -h/2*theta_prim_tau*sin(theta_tau)-zeta_prim_tau*sin(theta_tau)-zeta_tau*theta_prim_tau*cos(theta_tau)-g*tau;
D = h/2*cos(theta_tau)-zeta_tau*sin(theta_tau)-C*tau-1/2*g*tau^2;

D = zeta_tau*sin(theta_tau);
C = zeta_prim_tau*sin(theta_tau)+zeta_tau*cos(theta_tau)*theta_prim_tau;


t1=(-C+sqrt(C^2-2*g*(D-rh)))/g

t2=(C-sqrt(C^2-2*g*(D-rh)))/g

k = (-C/g)+sqrt((C/g)^2-(2/g)*(D-Bh+(L/2)))
%% Uppg A V2
g = 9.82;
tau = 2; 

%Mackans längd och höjd/tjocklek
L = 0.10;
h = 0.01;

%Bordets höjd
Bh = 0.70;
theta_tau = pi/4;
theta_tau_prim = pi;
zeta_tau = L/3;
zeta_tau_prim = 0.3;

d = -zeta_tau*sin(theta_tau)+(h/2)*cos(theta_tau);
c = -zeta_tau_prim*sin(theta_tau)-zeta_tau*cos(theta_tau)*theta_tau_prim-(h/2)*sin(theta_tau)*theta_tau_prim;
t = (c/g)+sqrt((-c/g)^2+(2/g)*(d+Bh-(L/2)))
rot = theta_tau_prim*t + theta_tau;
vinkel = mod(rot,2*pi);

disp(vinkel);
if(vinkel < pi/2)
    disp("Marmelad upp :)");
end
if(vinkel > pi/2)
    disp("Marmelad ned :/")
end


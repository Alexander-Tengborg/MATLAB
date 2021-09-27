format short

syms g y0 t m Km s

clc

A=[0 1 0 0 0;
   0 0 -g 0 0;
   0 0 0 1 0;
   -g/y0^2 0 0 0 1/(m*y0);
   0 0 0 0 -1/t]

B=[0; 0; 0; 0; Km/t]

C=[1 0 0 0 0]

D=0

G=C*inv(s*eye(5)-A)*B+D;

pretty(G)

%https://i.imgur.com/b4UKxBA.png

%sys=tf([Km*g*y0],[m*y0^2*t])

num=Km*g*y0;

%den=m*g^2*s*t+m*g^2+m*s^5*y0^2*t+m*s^4*y0^2;

den=m*g^2*s*t+m*g^2+m*s^5*y0^2*t+m*s^4*y0^2;

%pretty(den);
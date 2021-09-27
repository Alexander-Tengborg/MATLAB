Kp=1
%Kp ska var 5.09 typ? 5.06???

num=Kp*[16 8]
den=[1 10 32 32 0]
G=tf(num,den);
%bode(G)

%sigma(G)

margin(G)
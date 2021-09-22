Kp=5.09

num=Kp*[16 8]
den=[1 10 32 32 0]
G=tf(num,den);
%bode(G)

%sigma(G)

margin(G)
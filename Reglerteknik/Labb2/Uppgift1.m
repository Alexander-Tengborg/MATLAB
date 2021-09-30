Kp=1
%Kp ska var 5.09 typ? 5.06???
clc
num=Kp*[16 8]
den=[1 10 32 32 0]
G=tf(num,den);
%bode(G)

%sigma(G)

margin(G)

for c = 5:0.01:5.5
    G=tf(c*num,den);

    [Am,phim,wpi,wc]=margin(G);
    phim    
end
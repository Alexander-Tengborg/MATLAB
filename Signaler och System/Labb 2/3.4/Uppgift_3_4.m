%% Uppgift 3.4 A
num=poly([-9i -7i -5i -1i 0 1i 5i 7i 9i])

sys=tf(num,1)

bode(sys)
%pzmap(sys)
%Notcharna ligger där dem ska.

%% Uppgift 3.4 B
num=poly([-9i -7i -5i -1i 0 1i 5i 7i 9i])
den=poly([-4 -4 -4 -4 -4 -4 -4 -4 -4 -4 -4 -4])

sys=tf(num,den)

bode(sys)
%pzmap(sys)
%w0 = 4 är bäst, släcker ut mest då w0>3

%

%% Uppgift 3.4 C


%% Uppgift 3.4 D
num=poly([-9i -7i -5i -1i 0 1i 5i 7i 9i])
den=poly([-4 -4 -4 -4 -4 -4 -4 -4 -4 -4 -4 -4])

sys=tf(num,den)

Habs=abs(evalfr(sys,j*3)) %Absolutbeloppet av överförningsfunktionen för omega=3

sys=tf(num/Habs,den) %Genom att dela funktionen med Habs så blir amplitud förändringen i omega3 = 0 dB, eller 1, dvs den ändras ej.

bode(sys)

%% Uppgift 3.4 E
Gnum=conv([1 0.1], [1 10])
Gden=conv([1 1], [1 1 9])

G=tf(Gnum,Gden)

Hnum=poly([-9i -7i -5i -1i 0 1i 5i 7i 9i])
Hden=poly([-4 -4 -4 -4 -4 -4 -4 -4 -4 -4 -4 -4])

H=tf(Hnum,Hden)

Habs=abs(evalfr(H,j*3)) %Absolutbeloppet av överförningsfunktionen för omega=3

%Genom att dela funktionen med Habs så blir amplitud förändringen
%i omega3 = 0 dB, eller 1, dvs den ändras ej.
H=tf(Hnum/Habs,Hden)

F=100

Ts=1/F

N=2^13 %Sampelvärde

Tmax=(N-1)*Ts

t=0:Ts:Tmax;

k=0:1:N-1;

omegak=2.*pi.*F.*k./N; %Vår frekvensaxel

xtemp=square(t); %Den undersökta funktionen
x=lsim(H,xtemp,t); %Funktionen efter den körts igenom systemet H
X=fft(x,N); %Den transformerade funktionen, med sampelvärde N

ytemp=lsim(G,x,t); %Funktionen efter den körts igenom systemet G
y=lsim(H,ytemp,t); %Funktionen efter den körts igenom systemet H
Y=fft(y,N); %Den transfomerade funktionen, med sampelvärde N


plot(omegak,abs(Y))
axis([0 40 0 6000])
title("Y(j\omega)")
xlabel('\omega')




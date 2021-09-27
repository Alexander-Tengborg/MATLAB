%% Uppgift 3.3A

F=100 %Frekvensen

Ts=1/F %Periodtiden

N=2^13 %Sampelvärde

Tmax=(N-1)*Ts

t=0:Ts:Tmax;

x=square(t); %Den undersökta funktionen

plot(t,x)

%3.3a) Signalen är udda, och vi får 13 stycken perioder.

%% Uppgift 3.3B

%Definerad funktion för att räkna ut a_k enligt ekvation (5)
a=@(k)1/(k*pi)*(2*sin(k*pi)-sin(k*2*pi));

%Definerad funktion för att räkna ut a_k enligt ekvation (6)
b=@(k)1/(k*pi)*(cos(k*2*pi)-2*cos(k*pi)+1);

a_values = []; %Här lagras alla a-värden som hittas
b_values = []; %Här lagras alla b-värden som hittas

%Letar efter värden på a/b från k=1 till k=1000
for k=1:1000
    a1=a(k);
    b1=b(k);
    
    if abs(a1) > 10e-13 && length(a_values) < 3
        fprintf('Hittade ett a vid k=%i!\n',k)
        a_values(length(a_values)+1)=a1;
    end
    
    if abs(b1) > 10e-13 && length(b_values) < 3
        fprintf('Hittade ett b vid k=%i!\n',k)
        b_values(length(b_values)+1)=b1;
    end
end

a_values
b_values

%a = 0 0 0 (är alltid noll)
%b = 4/(pi), 4/(3pi), 4/(5pi)  (fås av k=1, 3, 5)

%% Uppgift 3.3C

F=100 %Frekvensen

Ts=1/F %Periodtiden

N=2^13 %Sampelvärde

Tmax=(N-1)*Ts

t=0:Ts:Tmax;

k=0:1:N-1;

omegak=2.*pi.*F.*k./N; %Vår frekvensaxel

x=sin(t); %Den undersökta funktionen

Yp=fft(x,N); %Den transformerade funktionen, med sampelvärde N

plot(omegak,abs(Yp))

axis([0 6 0 6000])

%Hela grafen visar frekvenserna som bygger upp signalen x. 
%Lilla grafen visar dem 'k-värden som är aktuella', dvs våra b värden som 
%fås då k=1, 3 och 5. Dessa värden tillsammans med högre frekvenser 
%(omega/(k?) > 620) påverkar funktionen mest. Det ser ut som att signalen x 
%består av sinusformade signaler då dem 'peakar' och alternerar.

%Man kan se att relationen mellan X då omega/(k?)=1,2 och 3 är densamma som
%våra 3 värden som vi fick på b i 3.3B.

%% Uppgift 3.3D

N=2^13 %Sampelvärde

b=@(k)4/(k*pi) %ekvation för b_k från labb 1
Yp=[5203 1702 982.3] %Fås från 3.3 C

BH=@(Xk)2*Xk/N %BH är ekvation 10 från labb-pm

for k=1:2:5
    disp(sprintf('k = %i ger:',k))
    disp(sprintf('    Teoretiskt B = %f',b(k)))
    disp(sprintf('    Praktiskt B = %f\n',BH(Yp(ceil(k/2)))))
end

%% Uppgift 3.3E

num=conv([1 0.1], [1 10])
den=conv([1 1], [1 1 9])

sys=tf(num,den)

F=100

Ts=1/F

N=2^13 %Sampelvärde

Tmax=(N-1)*Ts

t=0:Ts:Tmax;

k=0:1:N-1;

omegak=2.*pi.*F.*k./N; %Vår frekvensaxel

x=square(t); %Den undersökta funktionen

y=lsim(sys,x,t); %Funktionen efter den körts igenom systemet

Y=fft(y,N) %Den transfomerade funktionen, med sampelvärde N

plot(omegak,abs(Y))

axis([0 6 0 6000])

b=@(k)4/(k*pi); %ekvation för B_k från labb 1
Yp=[4515 5480 619.7]; %Fås från att kolla i grafen

BH=@(Xk)2*Xk/N; %BH är ekvation 10 från labb-pm

for k=1:2:5
    G=evalfr(sys,j*k); %Överföringsfunktionen för motsvarande omega (k)
    bt=b(k)*abs(G); %B_k för y
  
    disp(sprintf('k = %i ger:',k))
    disp(sprintf('    Teoretiskt B = %f',bt))
    disp(sprintf('    Praktiskt B = %f\n',BH(Yp(ceil(k/2)))))
    disp(sprintf('    G(jw) = %s',num2str(G)))
end

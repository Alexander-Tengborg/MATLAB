%% DEL A 
%Lista begynnelsevilkor
%t=0 %Tiden när det startar är 0s

%% Uppgift A 
clc;
clf;
clear vars;
%m=massa
%längd (L) och bred(L) på brödskivan.
% Initiering
%g=9.81;
%t=0;         %tiden 
%v=0;         %hastighet v=v0, men vi antar v=0
%d(t)=0;     %rotation (enhetsvektor)
%o(t)=0;     %vinkeln    

%Fas 2: 
% Fritt fall: x=-g*t+v0*t
% Vi vet att a=9,82m/s^2

%Free fall, alltså är a=g=9.81 

% y''= -g 
% yvektor= [y1; y2] 
% yprimvektor=[y1'; y2']
% y1=y positions
% y2=y' velocity
% y1=y' velocity
% y2'=y'' acceleration

%KOD BÖRJAR HÄR 
% Använd interpl för att räkna ut tiden det tar för x0 att no golvet.
%interp1 % find time when hight of the table is because of h=1. 

w=pi;                               %angel velocity
start_angel=pi/4;                     %start angel
h_interp=0;                           %Time when bread touches the floor
theta=h_interp.*w + start_angel     %angel
x0=1;                               %Height of the table
v0=1;                               %start velocity
%z=0;                                %Förskjutning ifrån bordet 
%z=v0                               %Hastigheten ifrån förskjutning ifrån bordet
m=1;                                 %Massan brödet
g=-9.82;                             %Accerlerationen


T=[0:0.01:0.7];                     %Time intervall
[t,y]=ode45(@f2,T,[x0;v0]);         %[tid], [displacement,velocity]
plot(t,y(:,1))

%subplot(2,2,1)

[t,E]=ode45(@f2,T,[x0;v0]);         %[tid], [displacement,velocity]
plot(t,E(:,1))

%subplot(2,2,2)

h_interp=interp1(y(:,1),t,0)        %Time when the marmelad reaches the floor

if (theta <=( -pi/2 + 2*pi) && theta < (pi/2 +2*pi))
    disp('marmelad upp') 
elseif (theta <=(pi/2 +2*pi) && theta<(3*pi/2 +2*pi)) 
    disp('marmelad ner')
end
%Acceleration
function [dy] = f2(t,y) 
dy=zeros(2,1);
dy(1)=y(2); %velocity
dy(2)=-9.8; %acceleration
end

%Energy
function [dE] = f3(t,E) 
dE=zeros(4,1);
dE(1)=E(2); %energy(t)
dE(2)=0;    %energy'(t)
end

%T(t)+V(t)=0
%Locationvector????
%Help? Från steg 5

%Transformating the location vector 

%A=[cx*cos(theta(t)) cy*(-sin(theta(t))); -cx*sin(theta(t)) cy*cos(theta(t))];

%Kinetic energy
%m=1; %1 kilogram
%T(t)=(1/2)*m*v(t).^2

%T(t)=m*(h/2*(cos(theta(t)).^2-h/2*(sin(theta(t)).^2).^2/2;

%Potential energy
%V(t)=m*g*h

%E=T+V
%theta(t)=0;


%% FAS0

%FRÅGA 1: 
%Precis när halva brödet passerat bordskanten (L/2)där L är längden på
%bördet. Precis vid MC.

%Fråga 2:
% Begynelsevilkor:
% t=0, tiden 
% v=v0, hastighet
% θ(t)=o(t), orientering enligt marmelandskivan(Koordinatsystem)
% ζ(t)=d(t), rotationshastighet (vinkelhanstighet)

%% FAS1
%Friktionsfri yta
%θ = θ(t)
%ζ = ζ(t)
%Fråga 3:
%Lägesvektor och hastighetsvektor i termer av θ(t) och ζ(t)
%Derviera lägesvektorn och få hastighetsvektorn

%Fråga 4:
%Ta reda på vinkelhastigheten

%Fråga 5:
%θ(0) =0 %Vinkel är 0 vid t=0
%ζ(0) =0 %Avstångdet mellan N och MC är 0 vid t=0
% Deklarera vinkelhastigheten genom att derivera vinkeln vid t=0 
% Deklararera hastigheten genom att derivera avsttåndet mellan N och MC vid t=0

%Fråga 6;
%Kraftvilkor eller hastighetsvilkor uttryckt i gränsen mellan Fas 1 och Fas 2
%klockan är t=T 

%Fråga 7; 
%Deklarera följande: 
%m=massa
%längd och bred på brödskivan

%% FAS2
%Free fall, alltså är a=g=9.81 


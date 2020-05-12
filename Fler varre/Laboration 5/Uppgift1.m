%% Trapetsmetoden: 12 intervall
% Trapetsmetoden �r medelv�rdet av v�nster och h�ger rektangelregel
clc
f=@(x)(x.^3+2*x.^2+6*x-10);    %Funktionen
a=-10;                        %Statv�rdet
b=-8;                        %Slutv�det
n=10;                      %Antalet punkter d�remellan
h=(b-a)/n;                  %Medelv�rdet
x=a:h:b;            
y=f(x);             %L�ttare namn p� funktionen
 
M=h*(sum(y)-y(1)/2-y(end)/2)
 
%Trapetsmetoden: 23 intervall
 
f=@(x)(x.^3+2*x.^2+6*x-10);  %Funktionen
a=-10;                        %Statv�rdet
b=-8;                         %Slutv�det
n=18;                      %Antalet punkter d�remellan
p=(d-c)/n;                  %Medelv�rdet
x=c:p:d;            
y=f(x);             %l�ttare namn p� funktionen
 
N=p*(sum(y)-y(1)/2-y(end)/2)
 
 
% Integral f�r hand
 
P= -4354/3;
 
abs(P-N)/abs(P-M)
 
 
(((-6+8)/23)/((-6+8)/12)).^2
 
abs(P-N)/((-6+8)/23).^2
 
%%
 
%Svar
X = -10:0.05:-8;
I = (1/20)*sum(f(X(1:end-1)))

%Svar
X = linspace(-10, 8, 41);
I = (2/40)*sum(f(X));
 
 
 
 
%% Andra f�rs�ket - V�nster rektangelregeln
clc
% 24 intervall
n=24;
a=3;
b=6;
f=@(x)(x.^3+2*x.^2-5*x-8);
x=linspace(a,b,n+1);
h=(b-a)/n;
M=sum(h*f(x(1:n)))
 
% 38 intervall
n=38;
a=3;
b=6;
f=@(x)(x.^3+2*x.^2-5*x-8);
x=linspace(a,b,n+1);
h=(b-a)/n;
N=sum(h*f(x(1:n)))
 
% Integrera f�r hand
P= 1353/4;
 
abs(P-N)/abs(P-M);
 
 
(((6-3)/38)/((6-3)/24)).^1;
 
abs(P-M)/((6-3)/24)
 
%%
X = linspace(3, 12, 37);
I = (1/4)*sum(f(X(2:end)));
 
X = linspace(3, 12, 37);
I = (9/36)*sum(f(X));
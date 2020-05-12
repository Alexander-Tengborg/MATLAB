%% Trapetsmetoden: 12 intervall
% Trapetsmetoden är medelvärdet av vänster och höger rektangelregel
clc
f=@(x)(x.^3+2*x.^2+6*x-10);    %Funktionen
a=-10;                        %Statvärdet
b=-8;                        %Slutvädet
n=10;                      %Antalet punkter däremellan
h=(b-a)/n;                  %Medelvärdet
x=a:h:b;            
y=f(x);             %Lättare namn på funktionen
 
M=h*(sum(y)-y(1)/2-y(end)/2)
 
%Trapetsmetoden: 23 intervall
 
f=@(x)(x.^3+2*x.^2+6*x-10);  %Funktionen
a=-10;                        %Statvärdet
b=-8;                         %Slutvädet
n=18;                      %Antalet punkter däremellan
p=(d-c)/n;                  %Medelvärdet
x=c:p:d;            
y=f(x);             %lättare namn på funktionen
 
N=p*(sum(y)-y(1)/2-y(end)/2)
 
 
% Integral för hand
 
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
 
 
 
 
%% Andra försöket - Vänster rektangelregeln
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
 
% Integrera för hand
P= 1353/4;
 
abs(P-N)/abs(P-M);
 
 
(((6-3)/38)/((6-3)/24)).^1;
 
abs(P-M)/((6-3)/24)
 
%%
X = linspace(3, 12, 37);
I = (1/4)*sum(f(X(2:end)));
 
X = linspace(3, 12, 37);
I = (9/36)*sum(f(X));
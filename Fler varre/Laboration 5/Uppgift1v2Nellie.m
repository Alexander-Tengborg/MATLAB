%% uppgift 1
clc
clear;
format short

f = @(x) x.^3+4*x.^2+6.*x+3;
a = -6; b = 9;
 
I=integral(f,a,b);
 
% v‰nster-rektangelregeln
n=105;
x = linspace(a, b, n+1);
h = (b - a) / n;
V105 = sum(h*f(x(1:n)));
 
n=198;
x = linspace(a, b, n+1);
h = (b - a) / n;
V198 = sum(h*f(x(1:n)));
 
A1=abs(I-V198);
A2=abs(I-V105);
A=A1/A2;
 
disp("abs(I-VM4)/abs(I-M16)= "+A);
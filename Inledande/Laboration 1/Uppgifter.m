%% Uppgift 1
r=4;
A=pi*r^2

%% Uppgift 2
x=0:0.1:4*pi;
f=sin(x)+0.3*sin(5*x);
plot(x,f);
xlabel('x');
ylabel('y');
title('sin(x) och 0.3*sin(5x)');
grid on

%% Uppgift 3
s=0;
for i=1:5
    s=s+i^2;
end
disp(s)

%% Uppgift 4
x=linspace(-4,4);
y=min_fun(x);
plot(x,y)
grid on

y=fzero(@min_fun, -1)
y2=fzero(@min_fun, 1)



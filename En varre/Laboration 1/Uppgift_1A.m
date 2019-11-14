f = @(x)x.*cos(x);
a = 0;
b = 1;

%% 1
format long

integral(f, a, b)

%% 2
format short

width = @(n)(b-a)/n;

n = 50;
x=linspace(a,b,n+1);
approx1 = sum(width(n)*f(x(1:n)));

n = 200;
x=linspace(a,b,n+1);
approx2 = sum(width(n)*f(x(1:n)));

I = integral(f, a, b);
disp((approx1-I)/(approx2-I))
%% 3
format short

width = @(n)(b-a)/n;

n = 50;
x=linspace(a,b,n+1);
approx1 = sum(width(n)/2*(f(x(1:n))+f(x(2:n+1))));

n = 200;
x=linspace(a,b,n+1);
approx2 = sum(width(n)/2*(f(x(1:n))+f(x(2:n+1))));

I = integral(f, a, b);
disp((approx1-I)/(approx2-I))
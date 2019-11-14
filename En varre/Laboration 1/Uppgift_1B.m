f = @(x)x.*sin(x);
a = 0;
b = 2;
n = 50;
h = (b-a)/n;

%% 1
x=linspace(a,b,n+1);

sum(h*f(x(1:n)))

%% 2
x=linspace(a,b,n+1);

sum(h*f((x(1:n)+x(2:n+1))/2))
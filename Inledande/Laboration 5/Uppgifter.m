%% Uppgift 1
f=@(x)(x-2.5).*exp(-0.5*(x-2).^2)+0.2;
x=linspace(-4, 8);

plot(x, f(x));
axis([-3 8 -1 1]), grid on

%% Uppgift 2
a=-1;
b=0;

f=@(x)(x-2.5).*exp(-0.5*(x-2).^2)+0.2;

ab = f(a)*f(b)

m = (a+b)/2;

if f(a)*f(m) < 0
    b=m
else 
    a=m
end

%% Uppgift 3/4
format long

f=@(x)(x-2.5).*exp(-0.5*(x-2).^2)+0.2;

min_bisect(f,[-1,0],1e-5)
min_bisect(f,[1,3],1e-5)

%% Uppgift 5
x=linspace(11, 12);

min_bisect(@kastbana,[11,12],1e-5)

plot(x,kastbana(x));
grid on

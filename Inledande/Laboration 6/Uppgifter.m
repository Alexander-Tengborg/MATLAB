%% Uppgift 1
format long
f=@(x)x.^3-cos(4*x);
Df=@(x)3*x.^2+4*sin(4*x);

x=linspace(-2, 2);

plot(x, f(x))
axis([-2 2 -2 2])
grid on
hold on

x=linspace(0,2*pi);

x1=min_newton(f,Df,-0.8,0.5e-8)
plot(0.2*cos(x)+x1,0.2*sin(x)+f(x1));

x2 = min_newton(f,Df,-0.41,0.5e-8)
plot(0.2*cos(x)+x2,0.2*sin(x)+f(x2));

x3 = min_newton(f,Df,0.3,0.5e-8)
plot(0.2*cos(x)+x3,0.2*sin(x)+f(x3));

%% Uppgift 3A
format long
f=@(x)0.5*(x-2).^2-2*cos(2*x)-1.5;
Df=@(x)4*sin(2*x)+x-2;

%-0.4, 0.3, 1.3, 3
x=linspace(-2, 6);
plot(x, f(x))
axis([-2 6 -4 4])
grid on
hold on

x=linspace(0,2*pi)

x1=min_newton(f,Df,-0.4,0.5e-8)
plot(0.2*cos(x)+x1,0.2*sin(x))

x2=min_newton(f,Df,0.95,0.5e-8)
plot(0.2*cos(x)+x2,0.2*sin(x))

x3=min_newton(f,Df,1.9,0.5e-8)
plot(0.2*cos(x)+x3,0.2*sin(x))

x4=min_newton(f,Df,3.8,0.5e-8)
plot(0.2*cos(x)+x4,0.2*sin(x))

%% Uppgift 3B
%Se uppgift 1

%% Uppgift 4
format long
f=@(x)(3+sin(2*x))./(1+exp(0.03*x.^2))-1.2;
x=linspace(-5, 5);
plot(x, f(x))
axis([-5 5 -4 4])
grid on
hold on

x=linspace(0,2*pi)

x1=fzero(f,-3)
plot(0.2*cos(x)+x1,0.2*sin(x)+f(x1))

x2=fzero(f,-1.4)
plot(0.2*cos(x)+x2,0.2*sin(x)+f(x2))
 
x3=fzero(f,-0.4)
plot(0.2*cos(x)+x3,0.2*sin(x)+f(x3))

x4=fzero(f,1.7)
plot(0.2*cos(x)+x4,0.2*sin(x)+f(x4))

x5=fzero(f,3)
plot(0.2*cos(x)+x5,0.2*sin(x)+f(x5))

x6=fzero(f,4.5)
plot(0.2*cos(x)+x6,0.2*sin(x)+f(x6))
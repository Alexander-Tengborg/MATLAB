%% Fråga 1
r1=@(t)(3*cos(t)+3.6*cos(3*t))
r2=@(t)(3*sin(t)-3.6*sin(3*t))

t=linspace(0,2*pi,500)

plot(r1(t),r2(t))


%% Fråga 2

r1=@(t)sin(11*t).*(4-0.49*t.^2)
r2=@(t)cos(11*t).*(4-0.49*t.^2)
r3=@(t)5.6*t

t=linspace(-2.8,2.8,500)

plot3(r1(t),r2(t),r3(t))
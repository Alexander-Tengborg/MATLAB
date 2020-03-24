%% Question 1
% https://i.imgur.com/Ag4Mlzd.png
% https://i.imgur.com/QskzIXk.png
f=@(x,y)(3*x+y-5)
x=linspace(1,2,20); y=linspace(3,4,20);
[X,Y]=meshgrid(x,y)
Z=f(X,Y);
surf(X,Y,Z)

%% Question 2
% https://i.imgur.com/thNVd2R.png
x=linspace(-2,2,20); y=linspace(-2,2,20);
[X,Y]=meshgrid(x,y)

f=@(x,y)(2*x.^2+3*y.^2)
Z=f(X,Y);
subplot(2,2,1)
surf(X,Y,Z)
title('2x^2+3y^2')

f=@(x,y)(-2*x.^2-3*y.^2)
Z=f(X,Y);
subplot(2,2,2)
surf(X,Y,Z)
title('-2x^2-3y^2')

f=@(x,y)(-2*x.^2+3*y.^2)
Z=f(X,Y);
subplot(2,2,3)
surf(X,Y,Z)
title('-2x^2+3y^2')

f=@(x,y)(2*x.^2-3*y.^2)
Z=f(X,Y);
subplot(2,2,4)
surf(X,Y,Z)
title('2x^2-3y^2')

%% Question 3
% https://i.imgur.com/rBjyrzy.png
% https://i.imgur.com/0J5OF6h.png
x=linspace(-2,2,20); y=linspace(-2,2,20);
[X,Y]=meshgrid(x,y)

%Funktionsyta 2
f=@(x,y)(sqrt(-x.*y+4))
Z=f(X,Y);
subplot(2,2,1)
surf(X,Y,Z)
title('sqrt(-x*y+4)')

%Funktionsyta 1
f=@(x,y)(x.*exp(-(x.^2+y.^2).^(1/4)))
Z=f(X,Y);
subplot(2,2,2)
surf(X,Y,Z)
title('x*exp(-(x^2+y^2)^(1/4))')

%Funktionsyta 3
f=@(x,y)((x.^2+4).^(1/4))
Z=f(X,Y);
subplot(2,2,3)
surf(X,Y,Z)
title('(x^2+4)^(1/4)')

%Funktionsyta 4
f=@(x,y)(y.*exp(-(x.^2+y.^2).^(1/2)))
Z=f(X,Y);
subplot(2,2,4)
surf(X,Y,Z)
title('y*exp(-(x^2+y^2)^(1/2))')
%% Question 1
% https://i.imgur.com/tDhWEuW.png
% https://i.imgur.com/MgweZWC.png
x=linspace(-2,2,20); y=linspace(-2,2,20);
[X,Y]=meshgrid(x,y);

%Nivåkurva 3
f=@(x,y)(2*x.^2-5*y.^2)
Z=f(X,Y);
subplot(2,2,1)
contour(X,Y,Z,20)
title('2*x^2-5*y^2')

%Nivåkurva 2
f=@(x,y)(3*x.^2+7*y.^2)
Z=f(X,Y);
subplot(2,2,2)
contour(X,Y,Z,20)
title('3*x^2+7*y^2')

%Nivåkurva 1
f=@(x,y)(2*x-5*y-3)
Z=f(X,Y);
subplot(2,2,3)
contour(X,Y,Z,20)
title('2*x-5*y-3')

%Nivåkurva 4
f=@(x,y)(2*y-5*x-3)
Z=f(X,Y);
subplot(2,2,4)
contour(X,Y,Z,20)
title('2*y-5*x-3')

%% Question 2
% https://i.imgur.com/CNgoKFa.png
% https://i.imgur.com/ziTDEQI.png

f=@(x,y)(x.^2+1).^(3/4)
x=linspace(-1,1,20); y=linspace(-1,1,20);
[X,Y]=meshgrid(x,y);
Z=f(X,Y);
contour(X,Y,Z,20)

%% Question 2
% https://i.imgur.com/JToTcH0.png
x=linspace(-2,2,20); y=linspace(-2,2,20);
[X,Y]=meshgrid(x,y);

f=@(x,y)(x.*exp(-(x.^2+y.^2).^(1/2)))
Z=f(X,Y);
subplot(2,2,1)
contour(X,Y,Z,25)
title('x*exp(-(x^2+y^2)^(1/2))')

f=@(x,y)(y.*exp(-(x.^2+y.^2).^(1/2)))
Z=f(X,Y);
subplot(2,2,2)
contour(X,Y,Z,25)
title('y*exp(-(x^2+y^2)^(1/2))')

f=@(x,y)(x.*y.*exp(-(x.^2+y.^2).^(1/2)))
Z=f(X,Y);
subplot(2,2,3)
contour(X,Y,Z,25)
title('x*y*exp(-(x^2+y^2)^(1/2))')

% Rätt svar/funktion
f=@(x,y)(exp((x.^2+y.^2).^(1/2)))
Z=f(X,Y);
subplot(2,2,4)
contour(X,Y,Z,25)
title('exp((x^2+y^2)^(1/2))')
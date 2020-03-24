%% Question 1
% https://i.imgur.com/cbxJzFG.png
% https://i.imgur.com/Hg8ZETx.png
f=@(x,y)x.^2.*exp(-3*(x.^2+y.^4))
x=linspace(-2,2,40); y=linspace(-2,2,40);
[X,Y]=meshgrid(x,y);
Z=f(X,Y)
contour(X,Y,Z,20)
%% Question 1
% https://i.imgur.com/HMO96gd.png
f=@(x,y)(log(228-2*x.^2-2*y.^2));
r=linspace(7,8,30); t=linspace(0,2*pi,20);
[R,T]=meshgrid(r,t);
X=R.*cos(T);Y=R.*sin(T);Z=log(228-2*R.^2);
surf(X,Y,Z)

r=R(6,14);
t=T(6,14);
x=r*cos(t)
y=r*sin(t)
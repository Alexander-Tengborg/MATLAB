f = @(x,y)((0.5*y^2+1)*cos(1+x*y));
x= -2:0.1:2;
y= -2:0.1:2;
[X,Y] = meshgrid(x,y);
Z=f(X,Y);
plot3(x,y,Z);

X
Y
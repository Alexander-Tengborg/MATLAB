%%Fråga 1

f=@(x,y)3.9*x.^3.*y+2.0*x.^2.*y.^2-0.8*x.^3-1.6*x.^2

integral2(f,-2,-1,-4,1)

%%Vänster-rektangelregeln

f=@(x,y)3.9*x.^3.*y+2.0*x.^2.*y.^2-0.8*x.^3-1.6*x.^2;

n=9
m=65

a=-2
b=-1

c=-4
d=-1

h=(b-a)/n
k=(d-c)/m

x=linspace(a,b,n)
y=linspace(c,d,m)

[X,Y]=meshgrid(x,y)

I=h*k*sum(f)



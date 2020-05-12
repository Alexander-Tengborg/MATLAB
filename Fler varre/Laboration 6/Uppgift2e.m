r1=@(t)8*cos(t+0.7)-2*cos(t-0.7)
r2=@(t)8*sin(t+0.7)+2*sin(t-0.7)
% 50.9988+-E-4
n=39+1; %(delinterval+1)
tmin=-pi
tmax=pi

t=linspace(tmin,tmax,n)

x=r1(t)
y=r2(t)


d=(tmax-tmin)/n

L=0;
for i=1:n-1
    L=L+sqrt((x(i+1)-x(i))^2+(y(i+1)-y(i))^2);
end


L
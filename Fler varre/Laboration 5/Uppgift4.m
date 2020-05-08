%%Del 1
f=@(x,y)1+sin(-3.8*x-4.0*y+3.7);

xmin=-5;
xmax=2;
ymin=@(x)x.^2-34;
ymax=@(x)9-x.^2/3;

integral2(f,xmin,xmax,ymin,ymax)


%%Del 2

f=@(x,y)1+sin(-3.8*y-4.0*x+3.7)

xmin=-1
xmax=4
ymin=@(x)-1.4-0.7*sin(1.9*x);
ymax=@(x)1.2-0.5*cos(1.9*x);

integral2(f,xmin,xmax,ymin,ymax)

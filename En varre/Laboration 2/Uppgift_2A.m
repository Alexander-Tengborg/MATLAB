g=@(x)exp(-x.^2/2);
h=@(x)x.^2-2*x+1;

dif=@(x)g(x)-h(x);

a=fzero(dif,0);
b=fzero(dif,10);

integral(dif,a,b)
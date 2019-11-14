%% A
format short
f=@(x)exp(-x.^2);
l=[0 5];
n=100000;
k="v";
min_integral(f,l,n,k)

%% B
format short
f=@(x)1./(1+x.^2);
l=[-1 1];
n=100000;
k="m";
min_integral(f,l,n,k)

%% C
format short
f=@(x)tan(sqrt(x));
l=[0 1];
n=100000;
k="t";
min_integral(f,l,n,k)
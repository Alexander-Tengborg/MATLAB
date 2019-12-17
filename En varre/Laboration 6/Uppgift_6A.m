%"gränsvärde" - euler
n=exp(10.6-0.577)

n=23000;
k = linspace(1, n, n);
s=sum(1./k);

while s>10.6
    n=n-1;
    k = linspace(1, n, n);
    s=sum(1./k);
end

n=n+1
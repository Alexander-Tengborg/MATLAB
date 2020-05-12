td=[1920 1924 1928 1932]'; % t-data
yd=[604.4 593.4 576.2 538.4]'; % y-data

A=[ones(size(td)) td]; % Designmatrisen

x=A\yd;

c1=x(1)
c2=x(2)

c1+c2*2016
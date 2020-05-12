td=[1 2 3 4 5 6 7 8 9 10 11 12]'; % t-data
yd=[-1.3 -1.4 1.1 5.2 10.9 14.8 16.2 15.8 12.4 8.7 4.0 0.6]'; % y-data
w=pi/6
A=[ones(size(td)) sin(w*td) cos(w*td)]; % Designmatrisen

x=A\yd;

c1=x(1)
c2=x(2)
c3=x(3)
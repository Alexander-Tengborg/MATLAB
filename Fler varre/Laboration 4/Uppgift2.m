%% Del 1 typ??
clc
 
dfdx=@(x,y)-60.*y.^2+192.*y.*x+24*y;
dfdy=@(x,y)37.5.*y.^2-120.*y.*x+96.*x.^2+24.*x-15.*y;
   
syms x y
j1=jacobian(dfdx, [x,y])
j2=jacobian(dfdy, [x,y])
 
hessian=[j1;j2]
 
x=0
y=0.5;
subs(hessian)
 
%Sista!!
%Ifall diagonalen är positiv när du lägger in värdena du fick i från
%approximationen så är den positivt definit och det medför att det
%är en lokal minipunkt
%;
%Ifall den är negativt är den negativt definit och maxpunkt
%;
%Ifall någon av diagnoalens komponentet är 0 så är den indefinit och sadel?
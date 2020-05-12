f=@(t)t*-5/4
x=linspace(-10,10);

xPos = 4;
yPos = 2;

grid
hold on
plot(x,f(x))
plot(0, 0, 'ro', 'MarkerSize', 10);

plot(xPos, yPos, 'bo', 'MarkerSize', 10);

B=[4 5; 
   -5 4]
V=[1 0; 
   0 -1]

T=B*V*inv(B)

pos=T*[xPos; yPos];

xPos=pos(1);
yPos=pos(2);

plot(xPos, yPos, 'go', 'MarkerSize', 10);
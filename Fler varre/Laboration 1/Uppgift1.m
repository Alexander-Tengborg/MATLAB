%Något fel någonstans i uppgiften
%% Question 1
% https://i.imgur.com/7EMc8rc.png
x=[-2,2,7];
y=[-9,-3,4,7];
[X, Y]=meshgrid(x,y)


%% Question 2
% https://i.imgur.com/QM9ai4v.png
% https://i.imgur.com/oljiFnk.png
f=@(x,y)(-x.^(2).*exp(-2.*(x.^4+y.^4)))
x=linspace(-2,2,30); y=linspace(-2,2,30);
[X,Y]=meshgrid(x,y);
Z=f(X,Y);
surf(X,Y,Z)

%% Question 3 (1) Emils (En mängd kurvor som ligger på den önskade funktionsytan ritas.)
% https://i.imgur.com/685rnVI.png
% https://i.imgur.com/Zc811ws.png
f = @(x,y)( (0.5*y.^2 + 1).*cos(1 + x.*y) );
x = -2:0.1:2;
y = linspace(-2,2,30);
X = repmat(x, length(y), 1);
Y = repmat(y', 1, length(x));
Z = f(X, Y);
plot3(X,Y,Z);

%% Question 3 (2) Emilias (Skriptet är ej körbart.)
f = @(x,y)( (0.5*y^2 + 1)*cos(1 + x*y) );
x = -2:0.1:2;
y = linspace(-2,2,30);
[X, Y] = meshgrid(x, y);
Z = f(X, Y);
plot3(X,Y,Z);

%% Question 3 (3) Linus (Skriptet är ej körbart.)
f = @(x,y)( (0.5*y^2 + 1)*cos(1 + x*y) );
x = linspace(-2,2,30);
y = -2:0.1:2;
X = zeros(length(y), length(x)) + x;
Y = zeros(length(y), length(x)) + y';
Z = f(X, Y);
surf(x,y,Z);

%% Question 3 (4) Linnéas (En mängd kurvor som alla ligger på en annan yta ritas.)
f = @(x,y)( (0.5*y.^2 + 1).*cos(1 + x.*y) );
x = linspace(-2,2,30);
y = -2:0.1:2;
Z = zeros(length(y), length(x));
for i=1:length(y)
 for j=1:length(x)
  Z(i,j)=f(x(j), y(i));
 end
end
plot3(X,Y,Z);

%% Question 3 (Hur funktionsytan faktiskt ska se ut!)
f = @(x,y)( (0.5*y.^2 + 1).*cos(1 + x.*y) );
x = linspace(-2,2,30);
y = -2:0.1:2;
[X,Y]=meshgrid(x,y);
Z = f(X, Y);
surf(X,Y,Z);
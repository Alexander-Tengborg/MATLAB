%% Question 1
% https://i.imgur.com/nJIm4IR.png

%% Question 2
% https://i.imgur.com/PB3t1we.png
% https://i.imgur.com/KS0w02o.png
% https://i.imgur.com/CSGiA65.png
% https://i.imgur.com/CSGiA65.png
clear; clf;
a = 2.4; b = 1; r = 0.8;

x = linspace(a-r, a+r, 21); y = linspace(b-r, b+r, 21);

[X,Y] = meshgrid(x, y);

Z = zeros(size(X));

C = (X-a) + 2*(Y-b);

subplot(1, 2, 1);

mesh(X, Y, Z, C, 'LineWidth', 1.5);

hold on;

view(2);

axis equal, grid off, rotate3d off, title('Original mesh');

f  = @(x,y) [-12*x + 9*sin(x); -8*y + 0.5*sin(2*sqrt(x.^2 + y.^2))];

Df = @(x,y,h) [f(x+h, y) - f(x-h, y), f(x, y+h) - f(x, y-h)] / (2*h);

L  = @(x,y) f(a, b) + Df(a, b, 0.000001) * [x-a; y-b];

NonLinImg = reshape(f(X(:).', Y(:).').', length(y), length(x), 2);

LinImg    = reshape(L(X(:).', Y(:).').', length(y), length(x), 2);

subplot(1, 2, 2);

mesh(NonLinImg(:,:,1), NonLinImg(:,:,2), Z, C, 'FaceAlpha', 0.7, 'LineWidth', 1.5);

hold on;

mesh(LinImg(:,:,1), LinImg(:,:,2), Z-r, 'FaceAlpha', 0, 'EdgeColor', [0 0 0]);

view(2);

axis equal, grid off, rotate3d off, title('Transformed mesh');

t = 0:0.1:5.6;
pilX = [a + 0.3*r*cos(t), a+0.3*r*cos(5.6), a+0.3*r*cos(5.6)-0.08*r, a+0.3*r*cos(5.6)];
pilY = [b + 0.3*r*sin(t), b+0.3*r*sin(5.6)-0.08*r, b+0.3*r*sin(5.6), b+0.3*r*sin(5.6)];
pilZ = r*ones(size(pilX));
pilImg = f(pilX, pilY);
subplot(1, 2, 1); plot3(pilX, pilY, pilZ, 'r', 'LineWidth', 3);
subplot(1, 2, 2); plot3(pilImg(1,:), pilImg(2,:), pilZ, 'r', 'LineWidth', 3);

f(2.4,1)
Df(2.4,1,0.001)
det(Df(2.4,1,0.001))
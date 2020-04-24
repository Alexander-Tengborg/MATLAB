%https://i.imgur.com/esgtoJs.png
%https://i.imgur.com/Nbcy5OG.png

clear;

clf;

f=@(x) [ sin(x(1,:)) - 1.3 * x(2,:); x(1,:) - cos(1.4 * x(2,:)) ];
xmin = -1; xmax = 1; ymin = -1; ymax = 1;

[X, Y] = meshgrid(linspace(xmin,xmax,20), linspace(ymin,ymax,20));
	
Z = f([X(:)'; Y(:)']);

contour(X,Y,reshape(Z(1,:)',size(X,1),size(X,2)), [0 0], 'LineColor', 'k');
hold on;
contour(X,Y,reshape(Z(2,:)',size(X,1),size(X,2)), [0 0], 'LineColor', 'm');

format short

while true
  [x,y,button]=ginput(1);
  if button ~= 1 break; end
  
  [sol, fval, flag] = fsolve(f, [x; y]);
   if flag > 0 disp(sol) 
   end;
  
  if flag > 0 plot(x,y,'gx', sol(1),sol(2), 'bo');
  else plot(x,y,'rx'); end;
end;
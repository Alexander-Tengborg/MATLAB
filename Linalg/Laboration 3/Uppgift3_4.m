x=[3; -2; 5];
v=pi/9;
A=[cos(v) 0 sin(v); 0 1 0; -sin(v) 0 cos(v)];
x=A*x;

t=[2; -1; 3];
x=x+t;

v=pi/4;
A=[cos(v) -sin(v) 0; sin(v) cos(v) 0; 0 0 1];
x=A*x
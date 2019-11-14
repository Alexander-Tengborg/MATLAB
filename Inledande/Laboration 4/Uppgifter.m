%% Uppgift 1
x=[-4 4 0 -4];
y=[0 0 3 0];

fill(x, y, 'g')

Omkrets=polylen(x,y)

x=[-4 4 4 -4 -4];
y=[0 0 4 4 0];

Omkrets=polylen(x,y)

fill(x, y, 'g')

%% Uppgift 2A
i=0;
x=0;
    
while i < 1000000
    xOld = x;
    x=x+(-1)^i/(2*i+1);
    i=i+1;
    if 4*abs(xOld-x) < 0.5e-5 
        break;
    end
end
    
x=x*4

%% Uppgift 2B
x=0;
    
for i=0:1:999
    x=x+(-1)^i/(2*i+1);
end
    
x=x*4

%% Uppgift 3

[x,y]=ginput;
x=[x; x(1)];
y=[y; y(1)];

fill(x,y,'-o')

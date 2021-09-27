T=1; %väljs godtyckligt i 3.1 (b)
w=2*pi/T;
M=100
t=T*(0:M-1)/M

%Definerad funktion för att räkna ut b_k enligt ekvation (6)
b=@(k)4/(k*pi);

%Vår approximation för funktionen x(t), där a0=0
y=0;

%Här sker själva foruierserie uträkningen för alla ojämna 
%heltal från k=1 till k=99
for k=1:2:99
    y=y+b(k)*sin(k*w*t);
end
y=b(99)*sin(99*w*t)
%4/(pi*k)*sin(k*w*t)'=
%=4kw/(pi*k)*cos(k*w*t)=

hold on

%Plottar en linje y=0
line(xlim(), [0,0], 'LineWidth', 1, 'Color', 'black');

%Plottar den originella fyrkantsvågen, samt vår approximation
s=square(w*t);
plot(t,s,'Color','#ed7811')
plot(t,y,'Color','#3272bd')

grid on
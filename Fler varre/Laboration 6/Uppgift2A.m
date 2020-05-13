    %% Fråga 1
r1=@(t)8*cos(t+2.7)+cos(t-2.7);
r2=@(t)8*sin(t+2.7)-sin(t-2.7);

n=67+1; %(delinterval+1)

tmin=-pi;
tmax=pi;

t=linspace(tmin,tmax,n);

x=r1(t);
y=r2(t);

L=0;
for i=1:n-1
    L=L+sqrt((x(i+1)-x(i))^2+(y(i+1)-y(i))^2);
end
pl=L %polygontåglängd

% Fråga 2

syms t

r1=8*cos(t+2.7)+cos(t-2.7);
r2=8*sin(t+2.7)-sin(t-2.7);

dr1=diff(r1);
dr2=diff(r2);
tmin=-pi;
tmax=pi;

f=sqrt(dr1.^2+dr2.^2);

o=abs(vpa(int(f,[tmin tmax]))) %omkrets

%Fråga 3

Erel=abs(pl-o)/o*100

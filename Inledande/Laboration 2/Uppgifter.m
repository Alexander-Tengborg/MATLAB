%% Uppgift 1
A=[1 4 7 10; 2 5 8 11; 3 6 9 12];
b=[1; 3; 5];
c=[0 2 4 6 8];

disp(A(2,3))
disp(b(2))
disp(c(3))

A(2,3)=15

%% Uppgift 2
A=[1 5 9; 2 0 5; 3 7 11];
b=[29; 26; 39];
rref([A b])


%%
A=[1 1 3 4; -2 2 2 0; 1 1 2 3; 1 -1 -2 -1];
b=[2; -4; 1; 1];
rref([A b])
% x=t
% y=-2
% z=t
% w=1-t


%% Uppgift 3A
A=[11 4 3 7; 2 6 8 5; 9 12 1 10];
b=[3; 1; 5];
c=[4 2 8 0 6];

[v,i]=size(b);
disp([v,i]);
% Ger [3, 1], som är en kolonnmatris

[u,i]=size(c);
disp([u,i]);
% Ger [1 5], som är en radmatris

%% Uppgift 3B
[v,i]=max(A);
disp([v;i])
[v,i]=max(v)

% Max ger största talet på varje rad
%%
[u,i]=min(A);
disp([u;i]);
[u,i]=min(u)

% Min ger minsta talet på varje rad

%% Uppgift 4
t=1:5;

sum(t.^2)

A=[1 2; 1 0]
B=[0 1; 1 0]
C=[2 0; 0 3]

inv(transpose(B))

inv(transpose(B))*[1 0; 0 1]*inv(C)+A
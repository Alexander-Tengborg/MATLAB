A=[-9 -6 -3 -2 1 2 4 9 5;1 1 1 1 1 1 1 1 1; -18 -12 -6 -4 2 4 8 18 10; 0 0 0 0 0 0 0 0 0]

AT=A*transpose(A)

B=transpose(A)*A

B(5,7)
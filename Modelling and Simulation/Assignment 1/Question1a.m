p1 = sym('p1_%d', [3 1], 'real')

syms theta phi L m2 g real

q = [p1; theta; phi;]

p2 = [q(1)+L*sin(q(5))*cos(q(4)); q(2)+L*sin(q(5))*sin(q(4)); q(3)-L*cos(q(5))]

%DERIVATA

Dp1 = sym('Dp1_%d', [3 1])

syms Dtheta Dphi real

Dq = [Dp1; Dtheta; Dphi;]

%DERIVATA 

syms t2 v2 real

Dp2 = jacobian(p2,q)*Dq

T2 = 1/2*m2*(Dp2')*Dp2 == t2
V2 = m2*g*[0 0 1]*p2 == v2

%solve([T2], [q])


%coeffs(T2, [q])

%sym2poly(T2, [q])

V = vandermonde(3);
B = bernstein(3);
x = [0;2;0;2];
y = [0;2;3;4];
% coeficientes da aproximacao de x(t) pela base canonica
a1 = V\x
% coeficientes da aproximacao de y(t) pela base canonica
a2 = V\y
b1 = B\x;
b2 = B\y;
M = [1 0 0 0; -3 3 0 0; 3 -6 3 0; -1 3 -3 1]; % matriz mudanca de base
% coeficientes da aproximacao de x(t) pela base de Bernstein
c1 = M*b1
% coeficientes da aproximacao de y(t) pela base de Bernstein
c2 = M*b2
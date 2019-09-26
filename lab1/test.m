% polynom
P = [1 2 10 -20];
dP = [3 4 10];
% starting point
x0 = 1;
% newtons method
[xk, fxk, k] = newtons(P ,dP ,x0);

% polinom
P = [1 2 10 -20];
% starting point
x0 = 1;
% newtons method
[xk, fxk, k] = newtons(P, x0);

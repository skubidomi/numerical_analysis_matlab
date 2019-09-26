% polynom
P = [1 2 10 -20];
dP = [3 4 10];
% starting point
x0 = 1;
% newtons method
[xk, fxk, k] = newtons(P ,dP ,x0);
fprintf('value of x_k is %1.10e\n',xk)

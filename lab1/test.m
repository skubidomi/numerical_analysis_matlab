% polynomial
P = [1 2 10 -20];
dP = [3 4 10];
% starting point
x0 = 1;

% newtons method
[xk, fxk, k] = newtons(P ,dP ,x0);
fprintf('value of x_k is %1.10e\n',xk)

% secant method
[xk2, fxk2, k2] = secant(P, 1, 2);
fprintf('value of xk2 is %1.10e\n', xk2)

% bisection method
[x1, x2] = bisection(@f, 1, 2, 3);
fprintf('value of x after 3 steps is %1.10e\n',x1)

function y = f(x)
    % y = x^3 + 2*x^2 + 10 * x - 20;
    y = polyval(P, x);
end
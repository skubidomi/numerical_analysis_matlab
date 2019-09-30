% polynomial
P = [1 2 10 -20];
dP = [3 4 10];
% starting point
x0 = 1;

% newtons method
[xk, fxk, k] = newtons(P ,dP ,x0);
fprintf('[newtons]: value of x_k is %1.10e\n',xk)

% secant method
[xk2, fxk2, k2] = secant(P, 1, 2);
fprintf('[secant]: value of xk2 is %1.10e\n', xk2)

% bisection method
[x1, x2] = bisection(@f, 1, 2, 3);
fprintf('[bisection]: value of x after 3 steps is %1.10e\n',x1)

% combination of bisection and newtons
[x] = bisection_and_newton(@f, P, dP, 1, 2);
fprintf('[bisection & newton]: value of x is %1.10e\n',x)

% contraction and simple iteration
[x, steps] = contraction(@g, 1.5);
fprintf('[contraction]: value of x is %1.10e after %d steps\n',x, steps)

function y = f(x)
    y = x^3 + 2*x^2 + 10 * x - 20;
    % y = polyval(P, x); % somehow this does not work :(
end

function y = g(x)
    y = 20 / (x^2 + 2*x + 10);
end
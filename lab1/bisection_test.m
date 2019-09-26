[x1, x2] = bisection(@f, 1, 2, 3);
fprintf('value of x is %1.10e\n',x1)


function y = f(x)
    y = x^3 + 2*x^2 + 10 * x - 20;
end
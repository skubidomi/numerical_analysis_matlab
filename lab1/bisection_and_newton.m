function [x, y] = bisection_and_newton(f, P, dP, a0, b0)
%BISECTION_AND_NEWTON find a root of the input function (a polinomial)
% using a combination of the bisection method and newton's method.
[x1, x2] = bisection(f, a0, b0, 3);
x0 = (x1 + x2) / 2;
[x, y] = newtons(P, dP, x0);
end

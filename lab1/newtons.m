% NEWTON'S METHOD: for finding a solution to f(x)=0
% input: P polynomial, dP derivative of the polynomial, x starting point
% output: x the root, fx the function's value in x, loops number of loops
function [x, fx, loops] = newtons (P,dP, x)
loops = 0;
while  1E-8<abs(polyval(P, x)) % difference is smaller than 0.00000001
    x = x-polyval(P, x)/polyval(dP, x); % the method
    loops = loops + 1;
end
fx = polyval(P, x);
end
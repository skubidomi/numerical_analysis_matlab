% SECANT METHOD: to finding a solution to f(x)=0
% input: P polynomial, xmm smallest starting pt , xm biggest starting pt
% output: x the root, fx the function's value in x, loops number of loops
function [x, fx, loops] = secant (P, xmm, xm)
loops = 0;
x = xmm;
while 1E-8<abs(polyval(P, x))
    x = xm - polyval(P, xm)*(xm-xmm)/(polyval(P, xm)-polyval(P, xmm));
    xmm = xm; % shifting the points
    xm = x;
    loops = loops + 1;
end
fx = polyval(P, x);
end

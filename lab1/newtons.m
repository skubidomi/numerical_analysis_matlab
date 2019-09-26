function [x, fx, loops] = newtons (P, x)
loops = 0;
while  1E-8<abs(polyval(P, x)) % difference is smaller than 0.00000001
    x = x-polyval(P, x)/deriv(P, x); % the method
    loops = loops + 1; % loop counter
end
fx = polyval(P, x);
end
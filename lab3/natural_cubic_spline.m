function [g] = natural_cubic_spline(f, from,until, n)
%NATURAL_CUBIC_SPLINE Summary of this function goes here
%   based on: https://stackoverflow.com/questions/7642921/cubic-spline-program
%   but I wanted a functional result, and relaxed the algorithm to
%   interpolate along a liner grid only.

step = 1/n;
y = f(from:step:until);
d = (y(2:end) - y(1:end-1))./step;

lower = ones(n+1,1) .* step;
upper = lower .* 1;
main  = 2*(lower + upper);

A = spdiags([lower main upper], [-1 0 1], n-1, n-1);
b = 6*(d(2:end)-d(1:end-1));

m = A\b';
m = [ 0; m; 0];

s0 = y';
s1 = d' - step.*(2*m(1:end-1) + m(2:end))/6;
s2 = m/2;
s3 =(m(2:end)-m(1:end-1))./(6*step);

scaling = (n / (until-from));
indexer = @(x) floor((x - from) .* scaling)+sign(until-x);
getLower = @(x) floor((x - from).* scaling)./scaling;
helper = @(i) @(xl) @(x) s0(i) + s1(i)*(x-xl) + s2(i)*(x-xl).^2 + s3(i)*(x-xl).^3;

g = @(x) feval(feval(helper(indexer(x)),getLower(x)), x);

end


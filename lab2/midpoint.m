function y = midpoint(f, from, until, N)
%MIDPOINT integration approximation using the midpoint method
%   f: integrand
%   from: the left endpoint of the interval
%   until: the right endpoint of the interval
%   N: the number of subintervals

% calculate the interval(=step) length
step = (until-from)/N;

% create an "index" vector
idx = from+(step/2):step:until-(step/2);

% calculate the integral approximation at all indices
pieces = f(idx) .* step;

% sum up the approximation of the sub intervals
y = sum(pieces(:));

end


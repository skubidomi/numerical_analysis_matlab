function y = wrong_trapezoid(f, from, until, N)
%WRONG_TRAPEZOID integration approximation using a wrong trapezoid method
%   f: integrand
%   from: the left endpoint of the interval
%   until: the right endpoint of the interval
%   N: the number of subintervals

% calculate the step distance
step = (until-from)/N;

% create index vector
idx = from:step:until;

% use wrong weights for the trapezoid
weights = ones(N+1,1).* step;

% evaluate integrand and apply weights
y = dot(f(idx), weights);

end


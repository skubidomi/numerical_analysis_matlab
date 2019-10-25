function y = trapezoid(f, from, until, N)
%TRAPEZOID integration approximation using the trapezoid method
%   f: integrand
%   from: the left endpoint of the interval
%   until: the right endpoint of the interval
%   N: the number of subintervals

% calculate the interval(=stepping distance) length
step = (until-from)/N;

% get the points(=indices) where the integrand function will be evaluated
idx = from:step:until;

% calculate the weights used by the trapezoid method
weights = [step/2; ones(N-1,1).* step; step / 2];

% evaluate the integrand and apply the weight vector 
% (multiply weight with the corresponding value and sum up the results)
y = dot(f(idx), weights);

end


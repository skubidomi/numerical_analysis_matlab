function y = simpsons(f, from, until, N)
%SIMPSONS integration approximation using the simpsons method
%   f: integrand
%   from: the left endpoint of the interval
%   until: the right endpoint of the interval
%   N: the number of subintervals, should be an odd number (will be rounded down if even)

% if N is even "round it down to odd".
if(N/2 ~= round(N/2))
    N = N - 1;
end

% calculate the step distance = interval length
step = (until-from)/N;

% create an index vector where the integrand function will be evaluated.
idx = from:step:until;

% calulate the odd inner weights (and the basis of the even ones)
weights = ones(1,N-1).* (4 * step / 3);
% calculate the even inner weights
weights(2:2:length(weights)-1) = 2 * step / 3;
% pad the inner weights with the outer weights
weights = [ step / 3, weights, step / 3  ];

% evaluate the integrand and apply the weights
y = dot(f(idx), weights.');

end


function y = simpsons(f, from, until, N)
%SIMPSONS Summary of this function goes here
%   Detailed explanation goes here
if(N/2 ~= round(N/2))
    N = N - 1;
end


step = (until-from)/N;

idx = from:step:until;

weights = ones(1,N-1).* (4 * step / 3);
weights(2:2:length(weights)-1) = 2 * step / 3;
weights = [ step / 3, weights, step / 3  ];

y = dot(f(idx), weights.');

end


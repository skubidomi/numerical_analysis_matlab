function y = wrong_trapezoid(f, from, until, N)
%WRONG_TRAPEZOID Summary of this function goes here
%   Detailed explanation goes here

step = (until-from)/N;

idx = from:step:until;

weights = ones(N+1,1).* step;

y = dot(f(idx), weights);

end


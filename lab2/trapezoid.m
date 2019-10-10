function y = trapezoid(f, from, until, N)
%TRAPEZOID Summary of this function goes here
%   Detailed explanation goes here

step = (until-from)/N;

idx = from:step:until;

weights = [step/2; ones(N-1,1).* step; step / 2];

y = dot(f(idx), weights);

end


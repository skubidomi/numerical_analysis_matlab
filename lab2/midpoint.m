function y = midpoint(f, from, until, N)
%MIDPOINT Summary of this function goes here
%   Detailed explanation goes here

step = (until-from)/N;

idx = from+(step/2):step:until-(step/2);

pieces = f(idx) .* step;

y = sum(pieces(:));

end


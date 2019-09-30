function [x, steps] = contraction(varargin)
%CONTRACTION find f(x) = x using the simple iteration provided, that f is a
%"contraction"

% required inputs
f = varargin{1};
x0 = varargin{2};

% default values for optional inputs
epsilon = 1e-8;
maxSteps = 1e24;
steps = 0;

% read optional inputs
if(length(varargin) > 2)
    epsilon = varargin{3};
end

if (length(varargin) > 3)
    maxSteps = varargin{4};
end

if(length(varargin) > 4)
    steps = varargin{5};
end
    
% execute iteration
x = f(x0);
steps = steps + 1;

% check the recursion stopping criterion
if(maxSteps > 0 && abs(x - x0) > epsilon)
    % call the recursion
    [x, steps] = contraction(f, x, epsilon, maxSteps - 1, steps);
end

end


function [aNext, bNext] = bisection(varargin)
%BISECTION find the root of f in the interval from a0 until b0 using the
%bisection method.

f = varargin{1};
a = varargin{2};
b = varargin{3};

max_steps = 1e12;
epsilon = 1e-8;

if length(varargin) > 3 
   max_steps = varargin{4}; 
end

if length(varargin) > 4
   epsilon = varargin{5}; 
end

aNext = a;
bNext = b;

fa = f(a);
fb = f(b);

% input validation
if fb == 0
    aNext = 0;
else
    if fa * fb > 0
        error("invalid interval f(a) and f(b) have the same sign")
    end
    
    c = (a + b) / 2;
    fc = f(c);
    
    if fa * fc < 0
       bNext = c; 
    else
       aNext = c;
    end
    
    if abs(fc) > epsilon && max_steps > 0
       [aNext, bNext] = bisection(f, aNext, bNext, max_steps-1, epsilon); 
    end
end
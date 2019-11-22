function g = lagrange(f, X)
%LAGRANGE Summary of this function goes here
%   Detailed explanation goes here

N = length(X);

g = @(x) 0;
for i = 1:N
    h = @(x) 1;
    for j = 1:N
        if(i ~= j)
           h = @(x) h(x) * (x - X(j)) / (X(i) - X(j)); 
        end
    end
    g = @(x) g(x) + h(x)*f(X(i));
end

end


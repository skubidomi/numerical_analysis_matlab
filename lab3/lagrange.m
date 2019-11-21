function g = lagrange(f, from, until, k)
%LAGRANGE Summary of this function goes here
%   Detailed explanation goes here

step = (until - from) / (k-1); 
X = from:step:until;
g = @x 0;
for i = 0:k
    h = @x 1;
    for j = 0:k
        if(i ~= j)
           h = @x: h(x) * (x - X(j)) / (X(i) - X(j)); 
        end
    end
    g = @x: g(x) + h(x)*f(X(i));
end

end


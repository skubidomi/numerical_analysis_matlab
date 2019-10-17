function r = error_rate(method,N)
%ERROR_RATE Summary of this function goes here
%   Detailed explanation goes here

f = @(x) sin(x);

errors = ones(N,1);
r = ones(N-1,1);

for i = 1:N
    y = method(f, 0, pi/2, 2^i);
    errors(i) = abs(1 - y);
end

for i = 1:N-1
    r(i) = log2( errors(i) / errors(i+1) );
end

end



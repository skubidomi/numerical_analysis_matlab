function r = convergence_rate(method,N)
%CONVERGENCE_RATE calculate the convergence rate of a given method using 2 to 2^N intervals
%   this test uses the sinus function between 0 and pi/2 for calculating
%   the error rate of integration approximation of different methods. All
%   the methods must comply with the function type of:
%   function(float -> float) -> float -> float -> int -> float

% define test function
f = @(x) sin(x);

% initialize the error vector
errors = ones(N,1);
% initialize the error rate vector
r = ones(N-1,1);

% calculate the errors
for i = 1:N
    y = method(f, 0, pi/2, 2^i);
    errors(i) = abs(1 - y);
end

% calculate the error rates
for i = 1:N-1
    r(i) = log2( errors(i) / errors(i+1) );
end

end



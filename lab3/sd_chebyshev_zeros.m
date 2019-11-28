function y = sd_chebyshev_zeros(n)
%SD_CHEBYSHEV_ZEROS it returns with a vector with n+1 length, it calculates
%the points according to the Chebyshev zeros

% the formula of zeros
xj = @(j, n) cos(((2*j-1)*pi)/(2*n));
% we need degree + 1 point
n = n+1;

j = 1:1:n;
y = ones(1, n).*xj(j, n);

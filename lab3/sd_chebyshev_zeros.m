function y = sd_chebyshev_zeros(n)% visszaad n+1 pontot
xj = @(j, n) cos(((2*j-1)*pi)/(2*n));
n = n+1;

j = 1:1:n;
y = ones(1, n).*xj(j, n);

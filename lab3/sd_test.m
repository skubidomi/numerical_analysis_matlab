% f is the given function from Excercise 1
f = @(x) 1./(1+x.^2);

% This function calculates the errors of the Lagrange polynomial in two
% cases. Firstly with equidistant interpolation points and than with the
% points according to the chebyshev zeros.

sd_lagrange_error(f, 2, 24, 2, -5, 5, 0.0001)
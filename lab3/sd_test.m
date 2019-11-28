f = @(x) 1./(1+x.^2);

%y = lagrange_error(f, -5, 5, 2)
%y = lagrange_polynomial(f, -5, 5, 10);
sd_lagrange_error(f, 2, 24, 2, -5, 5, 0.0001)

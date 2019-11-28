function sd_lagrange_error(f, nfrom, nuntil, nstep, from, until, res)

% degree n from 2,4,6,...,24
degrees = nfrom:nstep:nuntil;
xpoints = from:res:until;
fypoints = f(xpoints);

errors = zeros(1, length(degrees)); 
ch_errors = zeros(1, length(degrees));
for i = 1:length(degrees)
    ypoints = sd_lagrange_polynomial(f, from, until, degrees(i), res);
    errors(i) = max(abs(ypoints-fypoints));
    
    ch_ypoints = sd_lagrange_polynomial_chebyshev(f, from, until, degrees(i), res);
    ch_errors(i) = max(abs(ch_ypoints-fypoints));
end
figure(3);
t = uitable();
t.ColumnName = {'Degree n', 'Max error (equidistant points)', 'Max error (chebyshev zeros)'};
t.Data = [degrees.' errors.' ch_errors.'];

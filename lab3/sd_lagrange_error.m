function sd_lagrange_error(f, nfrom, nuntil, nstep, from, until, res)
%SD_LAGRANGE_ERROR calculates the lagrange polynomial error with the case
%of equidistant points and points according to the zeros of chebyshev
%polynomials
%   f: the given function
%   nfrom: smallest degree
%   nuntil: biggest degree
%   nstep: degree steps
%   from: beginning of the interval
%   until: end of the interval
%   res: resolution between from and until

degrees = nfrom:nstep:nuntil;
% here will be the functions evaluation
xpoints = from:res:until;
% original functions points
fypoints = f(xpoints);

% to store lagrange error points with equidistant point
errors = zeros(1, length(degrees));
% to store lagrange error points with chebyshev zeros
ch_errors = zeros(1, length(degrees));

% fill error vectors in every degree
for i = 1:length(degrees)
    ypoints = sd_lagrange_polynomial(f, from, until, degrees(i), res);
    errors(i) = max(abs(ypoints-fypoints));
    
    ch_ypoints = sd_lagrange_polynomial_chebyshev(f, from, until, degrees(i), res);
    ch_errors(i) = max(abs(ch_ypoints-fypoints));
end

figure(1);
t = uitable();
t.ColumnName = {'Degree n', 'Max error (equidistant points)', 'Max error (chebyshev zeros)'};
t.Data = [degrees.' errors.' ch_errors.'];
t.Position = [ 73 161 424 239];

figure(2);
subplot(2, 1, 1);
plot(degrees, errors);
title('Error with equidistant interpolation points');

subplot(2, 1, 2);
plot(degrees, ch_errors);
title('Error with Chebyshew nodes')
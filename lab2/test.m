
f = @(x) sin(x);
N = 13;

y = midpoint(f, 0, pi/2, N);

fprintf('[midpoint]: integrate of sin with %i points is %1.10e\n', N, y)

y = trapezoid(f, 0, pi / 2, N);

fprintf('[trapezoid]: integrate of sin with %i points is %1.10e\n',N, y)

y = simpsons(f, 0, pi / 2, N);

fprintf('[simpsons]: integrate of sin with %i points is %1.10e\n',N, y)

y = simpsons(f, 0, pi / 2, 2*N);

fprintf('[simpsons]: integrate of sin with %i points is %1.10e\n',2*N, y)

r_mid = error_rate(@midpoint, 10);

nexttile
plot(r_mid);
title('Midpoint')

r_sim = error_rate(@simpsons, 10);

nexttile
plot(r_sim);
title('Simpsons')

r_trap = error_rate(@trapezoid, 10);

nexttile
plot(r_trap);
title('Trapezoid')

r_wt = error_rate(@wrong_trapezoid, 10);

nexttile
plot(r_wt);
title('Wrong trapezoid')

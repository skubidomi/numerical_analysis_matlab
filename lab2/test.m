
f = @(x) sin(x);
N = 13;

y = midpoint(f, 0, pi/2, N);

fprintf('[midpoint]: integrate of sin is %1.10e\n', y)

y = trapezoid(f, 0, pi / 2, N);

fprintf('[trapezoid]: integrate of sin is %1.10e\n', y)

y = simpsons(f, 0, pi / 2, N);

fprintf('[simpsons]: integrate of sin is %1.10e\n', y)


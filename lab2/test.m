
f = @(x) sin(x);

y = midpoint(f, 0, pi/2, 128);

fprintf('[midpoint]: integrate of sin is %1.10e\n', y)

y = trapezoid(f, 0, pi / 2, 128);

fprintf('[trapezoid]: integrate of sin is %1.10e\n', y)



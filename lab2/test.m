
% use the sinus function for testing
f = @(x) sin(x);
% use 13 intervals for approximation (bcs its a prime :)
N = 13;

% approximate the target function using the midpoint method
y = midpoint(f, 0, pi/2, N);
fprintf('[midpoint]: integrate of sin with %i points is %1.10e\n', N, y)

% approximate the target function using the trapezoid method
y = trapezoid(f, 0, pi / 2, N);
fprintf('[trapezoid]: integrate of sin with %i points is %1.10e\n',N, y)

% approximate the target function using the simpsons method
y = simpsons(f, 0, pi / 2, N);
fprintf('[simpsons]: integrate of sin with %i points is %1.10e\n',N, y)

% for comparison with other solutrions test the simpsons method using twice
% as many intervals (as permitted by the excercise notes)
y = simpsons(f, 0, pi / 2, 2*N);
fprintf('[simpsons]: integrate of sin with %i points is %1.10e\n',2*N, y)

% calculate the convergence rate of the midpoint method
r_mid = convergence_rate(@midpoint, 10);
subplot(2,2,1)
plot(r_mid);
title('Midpoint')
% it converges to 2

% calculate the convergence rate of the simpsons method
r_sim = convergence_rate(@simpsons, 10);
subplot(2,2,2)
plot(r_sim);
title('Simpsons')
% it converges to 4 (?)

% calculate the convergence rate of the trapezoid method
r_trap = convergence_rate(@trapezoid, 10);
subplot(2,2,3)
plot(r_trap);
title('Trapezoid')
% it converges to 2

% calculate the convergence rate of the wrong trapezoid method
r_wt = convergence_rate(@wrong_trapezoid, 10);
subplot(2,2,4)
plot(r_wt);
title('Wrong trapezoid')
% it converges to 1
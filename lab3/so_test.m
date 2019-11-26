
f = @(t) @(x) sin(5*pi*x)*cos(10*pi*t) + 2*sin(7*pi*x)*cos(10*pi*t);
f0 = f(0);

num_points = 5;

x = linspace(-5,5,num_points);
y = f0(x);

[s0,s1,s2,s3] = so_cubic_spline(x',y');

plot_points = 1000;
xx = linspace(-5,5,plot_points);
yy = f0(xx);

plot(xx,yy,'g');
hold on;
so_plot_cubic_spline(x,s0,s1,s2,s3);
hold off;
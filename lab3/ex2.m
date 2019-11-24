f = @(t) @(x) sin(5*pi*x)*cos(10*pi*t) + 2*sin(7*pi*x)*cos(10*pi*t);

% find some value that can be calculated fast but also gives a nice
% representation.
discrete_unit = .001;

% fixed by the task description;
time_step = .02;
T = 0:time_step:1;
X = 0:discrete_unit:1;

%XT = T' .* X;
YT = zeros(1/time_step+1, 1/discrete_unit+1);

testY = linear_spline_interpolation(f(0), 0,1,50, .01);

for t = 0:time_step:1
    for x = 0:discrete_unit:1
       y = linear_spline_interpolation(f(t), 0, 1, 50, x);
       xi = round(x/discrete_unit)+1;
       ti = round(t/time_step) + 1;
       YT(ti,xi) = y;
    end
end



hold on;
f0 = f(33/50);
plot(X, f0(X));
plot(X,YT(34,:));
hold off;


% diff value in a given point
% we need a polynom(P)and a starting point(x0)
function [x0_deriv] = deriv (P, x0)
dx0 = 1E-10; % diff resolution
x_tart = [x0-dx0 x0+dx0]; % environment
y_tart = polyval(P, x_tart); % function value here
dx_tart = diff(x_tart); % differences between them
dy_tart = diff(y_tart);

x0_deriv = dy_tart/dx_tart;

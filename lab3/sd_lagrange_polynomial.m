function y = sd_lagrange_polynomial(f, from, until, n, res)
% returns with the y points of the particular polynom
% plot the original function on the interval
xvalues = from:res:until; 
yvalues = f(xvalues);
plot(xvalues, yvalues);
hold on;

% Lagrange interpolation points
step = (until-from)/n;
points = from:step:until;

l = @(x, xj, xk) (x-xj)/(xk-xj);
y = ones(1, length(xvalues));
yvalues = zeros(1, length(xvalues));
for k = 1:1:(n+1)
   for j = 1:1:(n+1)
       if(k~=j)
           y = y .* l(xvalues, points(j), points(k));
       end
   end
   y = y.*f(points(k));
   yvalues = yvalues + y;
   y = ones(1, length(xvalues));
end
figure(1);
plot(xvalues, yvalues);
y = yvalues;



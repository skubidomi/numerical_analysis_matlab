function y = sd_lagrange_polynomial_chebyshev(f, from, until, n, res)
%SD_LAGRANGE_POLYNOMIAL calculates the lagrange interpolation polynomial
%with the Chebyshev nodes
%   y: returns with the y points of the polynom
%   from: beginning of the interval
%   until: end of the interval
%   n: degree
%   res: resolution between from and until

xvalues = from:res:until; 

% the Chebyshev zeros
points = sd_chebyshev_zeros(n);
% extend the interval
points = points.*5;

% evaluation with the nodes above
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

% return with the calculated points
y = yvalues;
function y = sd_lagrange_polynomial(f, from, until, n, res)
%SD_LAGRANGE_POLYNOMIAL calculate the lagrange polynomial with a particular
%degree and equidistant points
%   y: returns with the y points of the polynom
%   from: beginning of the interval
%   until: end of the interval
%   n: degree
%   res: resolution between from and until

xvalues = from:res:until; 

% Lagrange interpolation points
step = (until-from)/n;
points = from:step:until;

% realization of "Lk" and "pn"
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

% return with the vector
y = yvalues;



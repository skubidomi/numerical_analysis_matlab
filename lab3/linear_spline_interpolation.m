function y = linear_spline_interpolation(f, from, until, N, x)
    scaling = N / (until-from);
    val = (x - from) * scaling;
    lower = floor(val) / scaling;
    upper = ceil(val) / scaling;
    if lower == upper % we are at one of the knots
       y = f(lower);
       return;
    end
    y = (upper - x) * scaling * f(lower) + (x - lower) * scaling * f(upper);
end

function y = test_lagrange_interpolation(f,X, unit)
    h = lagrange(f, X);
    y = zeros(10/unit,1);
    for j = -5:unit:5
        idx = round((j + 5) * (10/unit) +1);
        y(idx) = h(j) - f(j);
    end
end


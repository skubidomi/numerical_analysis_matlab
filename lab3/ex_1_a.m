
f = @(x) 1 / (1 + x^2);

E = zeros(12,2);
for i = 1:12
    step = 10/(2*i);
    X = -5:step:5;
    h = lagrange(f, X);
    test = zeros(10000,1);
    for j = -5:0.001:5
        idx = round((j + 5) * 1000 +1);
        test(idx) = h(j) - f(j);
    end
    E(i,1) = i*2;
    E(i,2) = norm(test, inf);
end

plot(E(:,1), E(:,2));


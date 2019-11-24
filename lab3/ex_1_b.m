
f = @(x) 1 / (1 + x^2);

E = zeros(12,2);
for i = 1:12
    n = 2*i+1;
    X = zeros(n,1);
    for k = 1:n
        X(k) = 5*cos( ((2*(n-k)-1) / 2*n) * pi);
    end
    h = lagrange(f, X);
    test = zeros(1000);
    for k = -5:0.001:5
        idx = round((k + 5) * 1000 +1);
        test(idx) = h(k) - f(k);
    end
    E(i,1) = i*2;
    E(i,2) = norm(test, inf);
end

plot(E(:,1), E(:,2));
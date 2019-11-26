
f = @(x) 1 ./ (1 + x.^2);

E = zeros(12,2);
for i = 1:12
    n = 2*i+1;
    X = 5.*cos( (2*(0:n-1)+1) / (2*n) * pi );
    h = lagrange(f, X);
    H = zeros(10000,1);
    F = f(-5:0.001:5)';
    for j = -5:0.001:5
        idx = round((j + 5) * 1000 +1);
        H(idx) = h(j);
    end
    E(i,1) = i*2;
    E(i,2) = norm(H - F, inf);
end

plot(E(:,1), E(:,2));
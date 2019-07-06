N = [5, 10, 20, 100];
n = 1000;
x = linspace(-5, 5, n);
y = zeros(4, n);

for i = 1:4
    for j = 1:n
        y(i ,j) = sin(x(j)*N(i)/2)/(N(i)*sin(x(j)/2));
    end
end

plot(x, y);
legend("5", "10", "20", "100");
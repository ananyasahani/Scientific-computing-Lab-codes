p     = @(x) (0);
q     = @(x) (-1);
r     = @(x) (0);
a     = 0;
b     = pi/2;
alpha = 0;
beta  = 1;
N     = 10;

y = Ananya_10_apr(p, q, r, a, b, alpha, beta, N);
x = linspace(a, b, N+1);
y_exact = sin(x);

fprintf('%-10s %-15s %-15s\n', 'x', 'y_numerical', 'y_exact');
for i = 1:length(x)
    fprintf('%-10.4f %-15.6f %-15.6f\n', x(i), y(i), y_exact(i));
end

figure;
plot(x, y, 'ro-', 'LineWidth', 2); hold on;
plot(x, y_exact, 'b--', 'LineWidth', 2);
legend('Numerical', 'Exact');
xlabel('x'); ylabel('y');
title('BVP: Finite Difference vs Exact');
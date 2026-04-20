p     = @(x) (x^2)/(x^3+1);
q     = @(x) -4*x/(x^3 +1);
r     = @(x) 2/(x^3 +1);
a     = 0;
b     = 2;
alpha = 0;
beta  = 4;
N     = 10;

y = Ananya_10_apr(p, q, r, a, b, alpha, beta, N);
x = linspace(a, b, N+1);
y_exact = sin(x);



figure;
plot(x, y, 'ro-', 'LineWidth', 2); hold on;
plot(x, y_exact, 'b--', 'LineWidth', 2);
legend('Numerical', 'Exact');
xlabel('x'); ylabel('y');
title('BVP: Finite Difference vs Exact');
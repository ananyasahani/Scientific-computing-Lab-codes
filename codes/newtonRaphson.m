X = [1; 1];
tol = 1e-6;
max_iter = 20;
for k = 1:max_iter
    F = [X(1)^2 + X(2)^2 - 9;
        X(1)-X(2)-1];
        J = [2*X(1), 2*X(2);
            1, -1];
    dX = -J\F;
    X = X + dX;
    if norm(dX) < tol
        fprintf('Converged in %d iterations\n', k);
        break;
    end
end

% Display result
fprintf('Solution:\n');
fprintf('x = %f\n', X(1));
fprintf('y = %f\n', X(2));
 


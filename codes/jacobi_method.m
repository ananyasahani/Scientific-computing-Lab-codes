function x = jacobi_method(A,b,tol,max_iter)
n = length(b);
x = zeros(n,1);
x_old = x;
for k = 1:max_iter
    for i = 1:n
        sum = 0;
        for j = 1:n
            if j ~= i
                sum = sum + A(i,j)*x_old(j);
            end
        end
        x(i) = (b(i) - sum)/A(i,i);
    end
    if norm(x-x_old,inf) < tol
        break;
    end
    x_old = x;
end
end
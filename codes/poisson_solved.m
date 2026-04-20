N = 20;
[X,Y] = meshgrid(linspace(0,1,N+2));
f = -81.*X.*Y;
U = poison_solver(N, f);
surf(X, Y, U); 
title('Poisson Solution');
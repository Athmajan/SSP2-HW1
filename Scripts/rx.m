% Define the coefficients matrix A and the right-hand side vector B
A = [1, -8, 4, 0; 1, 5, -9, 0; -4, -1, -1, 9; 18, -2, -2, -8];
%A = [2, -1, 3, 1; 1, 3, 1, 2; 4, 2, -1, 3; 3, 4, 2, 1];
B = [0;0;0;11];
%B = [8; 12; 3; 5];

% Solve the system of equations using linsolve
X = linsolve(A, B);

% Alternatively, you can use the backslash operator
% X = A \ B;
X = rats(X);
disp('Solution:');
disp(X);

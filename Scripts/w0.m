clear;
clc;


r0 = 11/13;
r1 = 11/52;
r2 = 11/52;
r3 = 11/26;

r = [r0; r1; r2; r3];
% Covariance of the input x(n)
Rx = toeplitz(r(1:4));

% Covarance of the noise process v(n)
R2 = 0.5*eye(4);

% Covariance of input signal u(n)
R = Rx + R2;
% Covariance vector
p = [11/18;0;0;0];

% Optimum filter coefficients
w = inv(R)*p

% Minimum MSE
MSE = 11/18 - p'*inv(R)*p;
disp(MSE);
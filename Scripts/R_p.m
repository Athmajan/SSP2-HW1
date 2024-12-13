r0 = 11/13;
r1 = 11/52;
r2 = 11/52;
r3 = 11/26;

r = [r0; r1; r2; r3];
Rx = toeplitz(r(1:3));
%Rx = [r0 r1 r2; r1 r0 r1; r2 r1 r0];

R2 = sigma_sqr*eye(3);
R = Rx + R2
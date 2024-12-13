%% SSP II - Matlab exercise 1 - Wiener Filter

clear;clc;

N = 10^8; % no of sample - Change this 
L = 4; % no of Wiener filter taps - Change this
sigma_sqr = 0.5; %- Change this
%% generate input signal

% Set the seed for reproducibility
rng(42);

d = randn(1, N) * sqrt(11/18);
%% output signal of the channel
channel_impulse = [1 -1/9 -1/9 -4/9]; % channel impulse response
x = filter(1, channel_impulse, d);  % filtering operation to generate x[n] from d[n]
%%
v = randn(1, N) * sqrt(sigma_sqr);
u = x +v;
%% Applying Wiener filter

r0 = 11/13;
r1 = 11/52;
r2 = 11/52;
r3 = 11/26;
% Defining the r vector to create cross correlation matrix
r = [r0; r1; r2; r3];

% Define cross correlation matrix
Rx = toeplitz(r(1:L));
% Define correlation matrix of noise process v(n)
R2 = sigma_sqr*eye(L);
% Correlation matrix of the input signal u(n)
R = Rx + R2;


%p = [11/18;0;0]; % L=3
%p = [11/18;0;0;0]; % L=4
% Defining p for the general case for both L=3 and L=4
p = zeros([L,1]);
p(1) = 11/18;


w0 = inv(R)*p; % Wiener filter coefficients obtained by calculation
dn_hat = filter(w0, 1, u); % filtering operation
%%
% Plot figures only for the case of N=10
if N==10
    %figure
    subplot(4,1,1)
    stem([1:N]-1,d,'fill','r')
    grid on;
    title('input signal, d[n]=')
    xlabel('time n')
    
    subplot(4,1,2)
    stem([1:N]-1,x,'fill','r')
    grid on;
    title('input signal, x[n]=')
    xlabel('time n')
    
    subplot(4,1,3)
    stem([1:N]-1,u,'fill','r')
    grid on;
    title('input signal, u[n]=')
    xlabel('time n')
    %figure
    subplot(4,1,4)
    stem([1:N]-1,dn_hat,'fill','r')
    grid on;
    title('input signal,  dhat(n)=');
    xlabel('time n')
end


%% calculate MSE

% print MSE 
mse = mean((dhat - d).^2);
disp(mse)
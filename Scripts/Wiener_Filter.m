%% SSP II - Matlab exercise 1 - Wiener Filter
clear;clc;
N = 10; % no of sample
L = 3; % no of Wiener filter taps
sigma_sqr = 0.1;
%% generate input signal

dn = ....; % generate Gaussian distributed signal d(n)

%figure
subplot(4,1,1)
stem([1:N]-1,dn,'fill','r')
grid on;
title('input signal, d[n]=')
xlabel('time n')

%% output signal of the channel
channel_impulse = [1 -1/9 -1/9 -4/9]; % channel impulse response
xn =   % filtering operation to generate x[n] from d[n]

%figure
subplot(4,1,2)
stem([1:N]-1,xn,'fill','r')
grid on;
title('input signal, x[n]')
xlabel('time n')

%% signal distorted by noise

un = .... ; % noise distorted version of x[n]

%figure
subplot(4,1,3)
stem([1:N]-1,un,'fill','r')
grid on;
title('input signal, y[n]')
xlabel('time n')

%% Applying Wiener filter
w0 = ...; % Wiener filter coefficients obtained by calculation
dn_hat = ...; % filtering operation

%figure
subplot(4,1,4)
stem([1:N]-1,dn_hat,'fill','r')
grid on;
title('input signal, X[n]=')
xlabel('time n')
%% calculate MSE

% ....

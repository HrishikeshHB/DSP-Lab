clc
clear all
close all
syms t;
A = 1;
T = 2;
f = 1/T;
w = 2*pi*f;
n = -5:5;
x = A*(heaviside(t) - heaviside(t-1));
c = (int(x.*exp(-1i*w*t*n),t,0,1))/T;
f1 = sum(c.*exp(1i*w*t*n));
t = 0:0.01:10;
f2 = subs(f1,t);
c1 = abs(c)
h = angle(c)
subplot(1,3,1)
plot(t,f2)
xlabel('t')
ylabel('f(t)');
title('Fourier Series')
grid on

subplot(1,3,2)
stem(n,c1)
xlabel('t')
ylabel('|cn|');
title('Magnitude Spectrum')
grid on

subplot(1,3,3)
stem(n,h)
xlabel('t')
ylabel('w');
title('Phase Spectrum')
grid on

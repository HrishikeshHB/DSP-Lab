clc
clear all
close all
syms t;
A = 1;
T = 4;
f = 1/T;
w = 2*pi*f;
n = -10:10;
x = abs(t).*(heaviside(t+2) - heaviside(t-2));
c = (int(x.*exp(-1i*w*t*n),t,-2,2))/T;
f1 = sum(c.*exp(1i*w*t*n));
t = -4:0.01:4;
f2 = subs(f1,t);
x2 = subs(x,t);
c1 = abs(c)
h = angle(c)
figure(1)
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

figure(2)
plot(t,x2)
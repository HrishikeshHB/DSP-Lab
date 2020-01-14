clc
clear all
close all
n = 0:50;
h = (0.9).^n;
q = dtft(h,0,2*pi,0,50);
a = abs(q);
b = angle(q);
w = 0:0.01:2*pi;

subplot(3,1,1)                          
plot(w,q)
xlabel('w')
ylabel('H(w)');
title('DTFT (h(n))')
grid on
subplot(3,1,2)
plot(w,a)
xlabel('w')
ylabel('Magnitude');
title('Magnitude Spectrum')
grid on

subplot(3,1,3)
plot(w,b)
xlabel('w')
ylabel('Phase');
title('Phase Spectrum')
grid on
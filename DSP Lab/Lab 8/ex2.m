clc
clear all
close all
w = 0:0.01:2*pi;
h = 1./(1-((0.8).*exp(-2*1j*w)));
a = abs(h);
b = angle(h);
subplot(3,1,1)
plot(w,h)
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
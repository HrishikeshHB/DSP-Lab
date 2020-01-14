clc
clear all
close all
w = -pi:0.01:pi;
h = (0.0181+((0.0543).*exp((-1j*w)))+((0.0543).*exp((-2j*w)))+((0.0181).*exp((-3j*w))))./(1-((1.76).*exp((-1j*w)))+((1.1829).*exp((-2j*w)))-((0.2781).*exp((-3j*w))));
a = abs(h);
b = angle(h);
subplot(4,1,1)
plot(w,h)
xlabel('w')
ylabel('H(w)');
title('DTFT (h(n))')
grid on

subplot(4,1,2)
plot(w,a)
xlabel('w')
ylabel('Magnitude');
title('Magnitude Spectrum')
grid on

subplot(4,1,3)
plot(w,b)
xlabel('w')
ylabel('Phase');
title('Phase Spectrum')
grid on

subplot(4,1,4)
plot(w,a.*a)
xlabel('w')
ylabel('|X(w)|^2');
title('Energy Spectrum')
grid on
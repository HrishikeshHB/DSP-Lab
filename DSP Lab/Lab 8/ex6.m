clc
clear all 
close all
e = 3;
q = [1,1,1];
m = -1:length(q)-2;
n = 0:length(e)-1;
w = 0:0.01:pi;
h = (q*exp(-1j*m'*w))./(e*exp(-1j*n'*w));
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
++
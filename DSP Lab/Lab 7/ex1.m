clc
clear all
close all
x = zeros(1,10);
for n=0:10
    x(n+1)=(0.9.*exp(1j*pi/3)).^(n);
end
q = dtft(x,-2*pi,2*pi,0,10);
c1 = abs(q)
h = angle(q)
w = -2*pi:0.01:2*pi;
subplot(3,1,1)
plot(w,q)
xlabel('w')
ylabel('X(w)');
title('Discrete Time Fourier Transform')
grid on

subplot(3,1,2)
plot(w,c1)
xlabel('w')
ylabel('Magnitude');
title('Magnitude Spectrum')
grid on

subplot(3,1,3)
plot(w,h)
xlabel('w')
ylabel('Phase');
title('Phase Spectrum')
grid on
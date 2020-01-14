clc
clear all
close all
t=linspace(0,1,150);
x=cos(2*pi*10*t);
y = cos(2*pi*10*t+pi/2);
w = dft(y,150);
q = dft(x,150);
c1 = abs(q);
h = angle(q);
k = 0:149;
c2 = abs(w);
h1 = angle(w);
subplot(2,2,1)
stem(k,c1)
xlabel('k')
ylabel('Magnitude');
title('Magnitude Spectrum DFT of x(t)=cos(2*pi*10*t)')
grid on

subplot(2,2,2)
stem(k,h)
xlabel('k')
ylabel('Phase');
title('Phase Spectrum DFT of x(t)=cos(2*pi*10*t)')
grid on

subplot(2,2,3)
stem(k,c2)
xlabel('k')
ylabel('Magnitude');
title('Magnitude Spectrum DFT of x(t)=cos(2*pi*10*t+(pi/2))')
grid on

subplot(2,2,4)
stem(k,h1)
xlabel('k')
ylabel('Phase');
title('Phase Spectrum DFT of x(t)=cos(2*pi*10*t+(pi/2))')
grid on
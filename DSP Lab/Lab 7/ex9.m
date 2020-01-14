clc
clear all
close all
t=0:0.0001:((2/3)-(1/16));
x=cos(2*pi*3*t)+cos(2*pi*25*t);
t1=0:1/200:((2/3)-(1/16));
x1=cos(2*pi*3*t1)+cos(2*pi*25*t1);
q = dft(x1,length(t1));
c1 = abs(q);
h1 = angle(q);
k = 0:length(t1)-1;

subplot(3,1,1)
plot(t,x)
xlabel('t')
ylabel('x(t)');
title('x(t)=cos(2*pi*3*t)+cos(2*pi*25*t)')
grid on


subplot(3,1,2)
stem(k,c1)
xlabel('k')
ylabel('Magnitude');
title('Magnitude Spectrum of DFT of x(t)=cos(2*pi*3*t)+cos(2*pi*25*t) for fs=200Hz')
grid on

subplot(3,1,3)
stem(k,h1)
xlabel('k')
ylabel('Phase');
title('Phase Spectrum of DFT of x(t)=cos(2*pi*3*t)+cos(2*pi*25*t)for fs=200Hz')
grid on

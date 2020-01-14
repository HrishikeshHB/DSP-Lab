clc
clear all
close all
t=0:1/100:1;
x=cos(2*pi*10*t);
y=cos(2*pi*10*t+(pi/2));

q = dft(x,length(t));
r= dft(y,length(t));
c1 = abs(q);
h1 = angle(q);
c2 = abs(r);
h2 = angle(r);
k = 0:length(t)-1;

subplot(2,2,1)
stem(k,c1)
xlabel('k')
ylabel('Magnitude');
title('Magnitude Spectrum of DFT of x(t)=cos(2*pi*10*t)')
grid on

subplot(2,2,2)
stem(k,h1)
xlabel('k')
ylabel('Phase');
title('Phase Spectrum of DFT of x(t)=cos(2*pi*10*t)')
grid on

subplot(2,2,3)
stem(k,c2)
xlabel('k')
ylabel('Magnitude');
title('Magnitude Spectrum of DFT of x(t)=cos(2*pi*10*t+(pi/2))')
grid on

subplot(2,2,4)
stem(k,h2)
xlabel('k')
ylabel('Phase');
title('Phase Spectrum of DFT of x(t)=cos(2*pi*10*t+(pi/2))')
grid on

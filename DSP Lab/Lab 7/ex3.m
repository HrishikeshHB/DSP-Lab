clc
clear all
close all
 

    x=rand([1,10]);
    y=rand([1,10]);

p = dtft(2*x,-2*pi,2*pi,0,9);
q = dtft(5*y,-2*pi,2*pi,0,9);
r = dtft(2*x+5*y,-2*pi,2*pi,0,9);
w = -2*pi:0.01:2*pi;
subplot(2,2,1)
plot(w,p)
xlabel('w')
ylabel('P(w)');
title('Discrete Time Fourier Transform')
grid on
subplot(2,2,2)
plot(w,q)
xlabel('w')
ylabel('Q(w)');
title('Discrete Time Fourier Transform')
grid on

subplot(2,2,3)
plot(w,(p+q))
xlabel('w')
ylabel('P(w)+Q(w)');
title('Sum of 2 DTFT')
grid on

subplot(2,2,4)
plot(w,r)
xlabel('w')
ylabel('R(w)');
title('Output when input is sum of 2 waveforms')
grid on
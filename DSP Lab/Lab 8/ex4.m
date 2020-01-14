clc
clear all
close all
n = 0:50;
h = (0.5).^n;
g = (-0.5).^n;
q = dtft(h,-pi,pi,0,50);
a = abs(q);
p = dtft(g,-pi,pi,0,50);
b = abs(p);
w = -pi:0.01:pi;

subplot(4,1,1)                          
stem(n,h)
xlabel('n')
ylabel('x(n)');
title('x(n)with a=0.5 ')
grid on
subplot(4,1,2)                          
stem(n,g)
xlabel('n')
ylabel('y(n)');
title('y(n)with a=-0.5 ')
grid on
subplot(4,1,3)
plot(w,a.*a)
xlabel('w')
ylabel('|X(w)|^2');
title('Energy Spectrum')
grid on
subplot(4,1,4)
plot(w,b.*b)
xlabel('w')
ylabel('|Y(w)|^2');
title('Energy Spectrum')
grid on
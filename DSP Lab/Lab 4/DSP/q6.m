clc 
clear all
close all
t = -5:0.025:5;
x = (3/2 + (3/10)*sin(2*pi*t) + sin(2*pi*t/3) - sin(2*pi*t/10)).*sinc(t);
subplot(2,2,1)
plot(t,x)
grid on
xlabel('t')
ylabel('x(t)')
title('(3/2 + (3/10)*sin(2*pi*t) + sin(2*pi*t/3) - sin(2*pi*t/10))*sinc(t) (CT)')

subplot(2,2,2)
stem(t,x)
grid on
xlabel('t')
ylabel('x(t)')
title('(3/2 + (3/10)*sin(2*pi*t) + sin(2*pi*t/3) - sin(2*pi*t/10))*sinc(t) (DT) fs = 40Hz')

t = -5:1:5;
x = (3/2 + (3/10)*sin(2*pi*t) + sin(2*pi*t/3) - sin(2*pi*t/10)).*sinc(t);
subplot(2,2,3)
plot(t,x)
grid on
xlabel('t')
ylabel('x(t)')
title('(3/2 + (3/10)*sin(2*pi*t) + sin(2*pi*t/3) - sin(2*pi*t/10))*sinc(t) (CT) (for Aliasing)')

subplot(2,2,4)
stem(t,x)
grid on
xlabel('t')
ylabel('x(t)')
title('(3/2 + (3/10)*sin(2*pi*t) + sin(2*pi*t/3) - sin(2*pi*t/10))*sinc(t) (DT) fs = 1Hz (for Aliasing)')

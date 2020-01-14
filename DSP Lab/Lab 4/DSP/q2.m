clc
clear all
close all
t=0:1/100:1;
x=10*cos(2*pi*10*t);
subplot(4,2,1)
plot(t,x)
grid on
xlabel('t')
ylabel('x(t)')
title('Cosine signal (CT)')

subplot(4,2,2)
stem(t,x)
grid on
xlabel('t')
ylabel('x(t)')
title('Cosine signal fs=100Hz (DT)')

t=0:1/50:1;
x=10*cos(2*pi*10*t);
subplot(4,2,3)
plot(t,x)
grid on
xlabel('t')
ylabel('x(t)')
title('Cosine signal (CT)')

subplot(4,2,4)
stem(t,x)
grid on
xlabel('t')
ylabel('x(t)')
title('Cosine signal fs=50Hz (DT)')

t=0:1/20:1;
x=10*cos(2*pi*10*t);
subplot(4,2,5)
plot(t,x)
grid on
xlabel('t')
ylabel('x(t)')
title('Cosine signal (CT)')

subplot(4,2,6)
stem(t,x)
grid on
xlabel('t')
ylabel('x(t)')
title('Cosine signal fs=20Hz (DT)')

t=0:1/10:1;
x=10*cos(2*pi*10*t);
subplot(4,2,7)
plot(t,x)
grid on
xlabel('t')
ylabel('x(t)')
title('Cosine signal (CT)')

subplot(4,2,8)
stem(t,x)
grid on
xlabel('t')
ylabel('x(t)')
title('Cosine signal fs=10Hz (DT)')
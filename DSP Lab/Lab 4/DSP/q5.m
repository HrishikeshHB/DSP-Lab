t=0:1/500:1;
x=5*cos(2*pi*10*t)+10*cos(2*pi*50*t);
subplot(1,2,1)
plot(t,x)
grid on
xlabel('t')
ylabel('x(t)')
title('Cosine signal (CT)       5*cos(2*pi*10*t)+10*cos(2*pi*50*t)')

subplot(1,2,2)
stem(t,x)
grid on
xlabel('t')
ylabel('x(t)')
title('Cosine signal fs=500Hz (DT)')
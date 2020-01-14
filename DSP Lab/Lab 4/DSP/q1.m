t=0:1/200:1;
x=10*cos(2*pi*10*t);
subplot(1,2,1)
plot(t,x)
grid on
xlabel('t')                                                                    
ylabel('x(t)')
title('Cosine signal (CT)')

subplot(1,2,2)
stem(t,x)
grid on
xlabel('t')
ylabel('x(t)')
title('Cosine signal fs=200Hz (DT)')

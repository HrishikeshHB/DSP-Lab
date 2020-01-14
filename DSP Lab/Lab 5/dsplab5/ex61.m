clc
clear all
close all
x = zeros(1,51);
y = zeros(1,51);
for i=0:50
    x(i+1) = 0.9^i;
    y(i+1) = (-0.8)^i;
end
t  = 0:1:50;
t1 = 0:1:length(x)+length(y)-2;
q = conv(x,y);
subplot(1,3,1)
stem(t,x)
xlabel('n')
ylabel('x1(n)')
grid on
title('Sequence 1')

subplot(1,3,2)
stem(t,y)
xlabel('n')
ylabel('x2(n)')
grid on
title('Sequence 2')


subplot(1,3,3)
stem(t1,q)
xlabel('n')
ylabel('x1(n)*x2(n)')
grid on
title('CONVOLUTION (x(n)*h(n))')


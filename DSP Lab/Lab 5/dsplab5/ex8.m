clc
clear all
close all
x = zeros(1,21);
y = zeros(1,21);
for i=0:20
    x(i+1) = 0.9^i;
end
for i=-20:0
    y(i+21) = 0.8^-i;
end
t1  = 0:1:20;
t2  = -21:1:0;
t = -21:1:length(x)+length(y)-2-21;
t3 = 0:1:length(x)+length(y)-2;

q = conv5(x,y,0,-21);
p = conv5(x,fliplr(y),0,0);

subplot(2,2,1)
stem(t1,x)
xlabel('n')
ylabel('x1(n)')
grid on
title('Sequence 1')

subplot(2,2,2)
stem(t1,y)
xlabel('n')
ylabel('x2(n)')
grid on
title('Sequence 2')

subplot(2,2,3)
stem(t,q)
xlabel('n')
ylabel('x1(n)*x2(n)')
grid on
title('CONVOLUTION (x(n)*h(n))')

subplot(2,2,4)
stem(t3,p)
xlabel('n')
ylabel('x1(n)*x2(n-l)')
grid on
title('CORRELATION (x(n)*h(n))')

iuuu
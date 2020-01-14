clc 
clear all
close all

h = [1 2 3 1];
x = [1 2 1 -1];
y = conv5(x,h,-1,0);
z = conv5(h,x,0,-1);
e = length(x);
d = length(h);
x = [x zeros(1,d-1)];
h = [h zeros(1,e-1)];
a = -1;
b = 0;
t1 = a:a+d+e-2;
t2 = b:b+d+e-2;
t3 = a+b:a+b+d+e-2;
subplot(2,2,1)
stem(t1,x)
xlabel('n')
ylabel('x1(n)')
grid on
title('Sequence 1')

subplot(2,2,2)
stem(t2,y)
xlabel('n')
ylabel('x2(n)')
grid on
title('Sequence 2')


subplot(2,2,3)
stem(t3,y)
xlabel('n')
ylabel('x1(n)*x2(n)')
grid on
title('CONVOLUTION (x(n)*h(n))')

subplot(2,2,4)
stem(t3,z)
xlabel('n')
ylabel('x2(n)*x1(n)')
grid on
title('CONVOLUTION (h(n)*x(n))')


clc
clear all
close all
x = [1 1 1 1 1 1 1 1 1];
h1 = [1 2 4 1 -5 1];
h2 = [3 2 5 6 -8 9];
h = [1 2 4 4 -3 6 6 -8 9];

y = conv5(x,h,-6,-5);
p = conv5(x,h1,-6,-5);
q = conv5(x,h2,-6,-2);
r = conv5(p,h2,

e = length(x);
d = length(h);
f = length(h1);
g = length(h2);

a = -6;
b = -5;
c = -2;

t1 = a+b:a+b+d+e-2;
t2 = a+b:a+b+f+e-2;
t3 = a+c:a+c+g+e-2;
t  = a+b:a+b+d+e-2;
x = [x zeros(1,d-1)];
h1 = [h1 zeros(1,d-1)];
h2 = [h2 zeros(1,d-1)];
h = [h zeros(1,d-1)];
subplot(2,4,1)
stem(t,x)
xlabel('n')
ylabel('x1(n)')
grid on
title('Sequence 1')

subplot(2,4,2)
stem(t,h1)
xlabel('n')
ylabel('h1(n)')
grid on
title('Impulse Response 1')


subplot(2,4,3)
stem(t,h2)
xlabel('n')
ylabel('h2(n)')
grid on
title('Impulse Response 2')

subplot(2,4,4)
stem(t,h)
xlabel('n')
ylabel('(h1(n)+h2(n))')
grid on
title('Impulse response1 + Impulse response2')

subplot(2,4,5)
stem(t,y)
xlabel('n')
ylabel('x(n)*(h1(n)+h2(n))')
grid on
title('Convolution')

subplot(2,4,6)
stem(t,p)
xlabel('n')
ylabel('x(n)*h1(n)')
grid on
title('Convolution 1')

subplot(2,4,7)
stem(t,q)
xlabel('n')
ylabel('x(n)*h2(n)')
grid on
title('Convolution 2')

subplot(2,4,8)
stem(t,q+p)
xlabel('n')
ylabel('x(n)*h1(n)+x(n)*h2(n)')
grid on
title('Convolution 1 + Convolution 2')
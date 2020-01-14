clc
clear all
close all
x =     [1 1 1 1 1 1 1 1 1 0];
h1 =    [0 1 2 4 1 -5 1 0 0 0];
h2 =    [0 0 0 0 3 2 5 6 -8 9];
h =     [0 1 2 4 4 -3 6 6 -8 9];

y = conv5(x,h,-6,-6);
p = conv5(x,h1,-6,-6);
q = conv5(x,h2,-6,-6);
t1 = -12:1:6;
t = -6:1:3;
t2 = -18:1:0;
r = conv5(p,h2,-18,-6);
s = conv5(q,h1,-18,-6);
t3 = -18:1:9;
length(r)

subplot(2,5,1)
stem(t,x)
xlabel('n')
ylabel('x1(n)')
grid on
title('Sequence 1')

subplot(2,5,2)
stem(t,h1)
xlabel('n')
ylabel('h1(n)')
grid on
title('Impulse Response 1')


subplot(2,5,3)
stem(t,h2)
xlabel('n')
ylabel('h2(n)')
grid on
title('Impulse Response 2')

subplot(2,5,4)
stem(t,h)
xlabel('n')
ylabel('(h1(n)+h2(n))')
grid on
title('Impulse response1 + Impulse response2')

subplot(2,5,5)
stem(t1,y)
xlabel('n')
ylabel('x(n)*(h1(n)+h2(n))')
grid on
title('Convolution')

subplot(2,5,6)
stem(t1,p)
xlabel('n')
ylabel('x(n)*h1(n)')
grid on
title('Convolution 1')

subplot(2,5,7)
stem(t1,q)
xlabel('n')
ylabel('x(n)*h2(n)')
grid on
title('Convolution 2')

subplot(2,5,8)
stem(t1,q+p)
xlabel('n')
ylabel('x(n)*h1(n)+x(n)*h2(n)')
grid on
title('Convolution 1 + Convolution 2')

subplot(2,5,9)
stem(t3,r)
xlabel('n')
ylabel('(x(n)*h1(n))*h2(n)')
grid on
title('Associative 1')

subplot(2,5,10)
stem(t3,s)
xlabel('n')
ylabel('(x(n)*h2(n))*h1(n)')
grid on
title('Associative 2')
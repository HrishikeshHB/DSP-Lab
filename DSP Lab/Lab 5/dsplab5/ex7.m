clc 
clear all
close all

x = [1 2 1 -1];
h = [1 2 3 1];
y = conv5(x,fliplr(h))
e = length(x);
d = length(h);
x = [x zeros(1,d-1)];
h = [h zeros(1,e-1)];
a = -1;
b = 0;
f=-(b+d-1);
t1 = a:a+d+e-2;
t2 = b:b+d+e-2;
t3 = a+f:a+f+d+e-2;

subplot(2,3,1)
stem(t1,x)
xlabel('n')
ylabel('x(n)')
grid on
title('Q7 a)Q2 x(n)')

subplot(2,3,2)
stem(t2,h)
xlabel('n')
ylabel('h(n)')
grid on
title('Q7 a)Q2 h(n)')


subplot(2,3,3)
stem(t3,y)
xlabel('n')
ylabel('x(n)*h(-n)')
grid on
title('Q7 a)Q2 CORRELATION')

x1 = [1 2 4 2 5 9 -1 2];
h1 = [1 6 7 4 3];
y1 = conv5(x1,fliplr(h1))
e1 = length(x1);
d1= length(h1);
x1 = [x1 zeros(1,d1-1)];
h1 = [h1 zeros(1,e1-1)];
a1 = -7;
b1 = 0;
f1=-(b1+d1-1);
z1 = a1:a1+d1+e1-2;
z2 = b1:b1+d1+e1-2;
z3 = a1+f1:a1+f1+d1+e1-2;


subplot(2,3,4)
stem(z1,x1)
xlabel('n')
ylabel('x(n)')
grid on
title('Q7 b)Q4 x(n)')

subplot(2,3,5)
stem(z2,h1)
xlabel('n')
ylabel('h(n)')
grid on
title('Q7 b)Q4 h(n)')


subplot(2,3,6)
stem(z3,y1)
xlabel('n')
ylabel('x(n)*h(-n)')
grid on
title('Q7 b) CORRELATION')
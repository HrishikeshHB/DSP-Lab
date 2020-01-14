clc
clear all
close all
h1 = [0 1 2 3 1];
x1 = [1 2 1 -1 0];
t = -1:1:3;
t9 = -1:1:length(x1)+length(h1)-3;
y = conv5(x1,fliplr(h1),-1,0);
z = conv(x1,fliplr(h1));

h = [1 6 7 4 3];
x = [1 2 4 2 5 9 -1 2];
e = length(x);
d = length(h);

h2 = [0 0 0 0 0 0 0 1 6 7 4 3];
x2 = [1 2 4 2 5 9 -1 2 0 0 0 0];

a = -7;
b = 0;
t1 = a:a+d+e-2;
t2 = b:b+d+e-2;
t3 = -7:1:4;
t6 =-11:1:11;
m = conv5(x2,fliplr(h2),-1,0);
n = conv(x2,fliplr(h2));
length(m)
length(n)
subplot(4,2,1)
stem(t,x1)
xlabel('n')
ylabel('x1(n)')
grid on
title('Sequence 1')

subplot(4,2,2)
stem(t,h1)
xlabel('n')
ylabel('x2(n)')
grid on
title('Sequence 2')

subplot(4,2,3)
stem(t9,y)
xlabel('n')
ylabel('x1(n)*x2(-n)')
grid on
title('Correlation using defined function')

subplot(4,2,4)
stem(t9,z)
xlabel('n')
ylabel('x1(n)*x2(-n)')
grid on
title('Correlation using in-built function')

subplot(4,2,5)
stem(t3,x2)
xlabel('n')
ylabel('x1(n)')
grid on
title('Sequence 1')

subplot(4,2,6)
stem(t3,h2)
xlabel('n')
ylabel('x2(n)')
grid on
title('Sequence 2')

subplot(4,2,7)
stem(t6,m)
xlabel('n')
ylabel('x1(n)*x2(n)')
grid on
title('Correlation using defined function')

subplot(4,2,8)
stem(t6,n)
xlabel('n')
ylabel('x2(n)')
grid on
title('Correlation using in-built function')
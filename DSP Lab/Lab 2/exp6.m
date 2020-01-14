clc 
clear all 
close all
x = linspace(-1,1,60);
p=[4 0 -3 0];
q=[2 0 -1 0]; 
subplot(1,2,1)
plot(x,polyval(p,x))
title('Inbuilt function')
grid on
xlabel('x')
ylabel('f(x)')
subplot(1,2,2)
plot(x,polyval(q,x))
grid on
xlabel('x')
ylabel('f(x)')
title('polyval')
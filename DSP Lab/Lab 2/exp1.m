clc
clear all
close all
x = 0:80;
f = sin((pi/2)*x)+sin((2/5)*pi*x);
plot(x,f)
grid on
title('Question 1')
xlabel('x')
ylabel('f(x)')
f(50)
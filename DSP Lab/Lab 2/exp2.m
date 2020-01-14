clc
clear all
close all
x = -50:50;
f = x.^3 - 20*x.^2 + 10*x -1;
plot(x,f)
grid on
title('x^3 - 20*x^2 + 10*x - 1')
xlabel('x')
ylabel('f(x)')

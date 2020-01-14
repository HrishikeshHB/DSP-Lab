clc 
clear all 
close all
x = linspace(-1,1,60);
f = 2*x.^3 - x;
plot(x,f)
grid on
xlabel('x')
ylabel('f(x)')
title('2*x^3 - x')


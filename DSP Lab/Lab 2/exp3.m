clc
clear all
close all
x=linspace(-2*pi,2*pi,60);
f=cos(x).^2-sin(x).^2;
plot(x,f)
grid on
xlabel('x')
ylabel('f(x)')
title('cos(x)^2-sin(x)^2')

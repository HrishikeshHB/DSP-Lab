clc 
clear all 
close all
t = linspace(0,10,500);
s=exp(-t).*exp(1i*2*pi*t);
plot(t,real(s),'r',t,imag(s),'b',t,abs(s),'c')
legend('real','imaginary','absolute')
grid on
xlabel('x','fontsize',14)
ylabel('f(x)','Fontsize',14)
title('exp(-t).*exp(1i*2*pi*t)')

clc 
clear all 
close all
x = linspace(-1,1,60);
p=[4 0 -3 0];
q=[2 0 -1 0]; 
subplot(2,2,1)
plot(x,polyval(p,x))
title('Q8 fig1(Q4)')
grid on
xlabel('x')
ylabel('f(x)')
subplot(2,2,2)
plot(x,polyval(q,x))
grid on
xlabel('x')
ylabel('f(x)')
title('Q8 fig2(Q5)')
subplot(2,2,3)
plot(x,polyval(p,x))
title('Q8 fig2(Q6a)')
grid on
xlabel('x')
ylabel('f(x)')
subplot(2,2,4)
plot(x,polyval(q,x))
grid on
xlabel('x')
ylabel('f(x)')
title('Q8 fig2(Q6b)')
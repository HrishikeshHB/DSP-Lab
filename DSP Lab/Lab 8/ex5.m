clc
clear all
close all
w = 0:0.01:2*pi;
%h = 1./(1-((0.8).*exp(-1j*w)));
q = 1;
e = [1,-0.8];
m = 0:length(q)-1;
n = 0:length(e)-1;
h = (q*exp(-1j*m'*w))./(e*exp(-1j*n'*w));
a = abs(h);
b = angle(h);
p = 0:30;
x = cos(0.05*pi*p);
y = filter(q,e,x);
subplot(4,1,1)
stem(p,x)
xlabel('n')
ylabel('x(n)');
title('Input')
grid on

subplot(4,1,2)
stem(p,y)
xlabel('n')
ylabel('y(n)');
title('Steady State Response')
grid on

subplot(4,1,3)
plot(w,a)
xlabel('w')
ylabel('Magnitude');
title('Magnitude Spectrum')
grid on

subplot(4,1,4)
plot(w,b)
xlabel('w')
ylabel('Phase');
title('Phase Spectrum')
grid on
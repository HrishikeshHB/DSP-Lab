clc
clear all
close all
x = zeros(1,8);
for n=0:3
    x(n+1)=1;
end
q = dft(x,8);
c1 = abs(q)
h = angle(q)
k = 0:7;

subplot(2,1,1)
stem(k,c1)
xlabel('k')
ylabel('Magnitude');
title('Magnitude Spectrum')
grid on

subplot(2,1,2)
stem(k,h)
xlabel('k')
ylabel('Phase');
title('Phase Spectrum')
grid on
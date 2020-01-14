clc
clear all
close all
x = zeros(1,4);
for n=0:3
    x(n+1)=1;
end
q = dtft(x,0,2*pi,0,3);
c1 = abs(q);
h = angle(q);
w = 0:0.01:2*pi;

subplot(2,1,1)
plot(w,c1)
xlabel('w')
ylabel('Magnitude');
title('Magnitude Spectrum')
grid on

subplot(2,1,2)
plot(w,h)
xlabel('w')
ylabel('Phase');
title('Phase Spectrum')
grid on
clc
clear all
close all
x = zeros(1,10);
for n=-5:5
    x(n+6)=(-0.9).^(n);
end
q = dtft(x,-2*pi,2*pi,-5,5);
c1 = abs(q);
h = angle(q);
w = -2*pi:0.01:2*pi;
subplot(2,2,1)
plot(w,q)
xlabel('w')
ylabel('X(w)');
title('Discrete Time Fourier Transform')
grid on
subplot(2,2,2)
plot(w,conj(q))
xlabel('w')
ylabel('X*(w)');
title('(Conjugate)Discrete Time Fourier Transform')
grid on

subplot(2,2,3)
plot(w,c1)
xlabel('w')
ylabel('Magnitude');
title('Magnitude Spectrum')
grid on

subplot(2,2,4)
plot(w,h)
xlabel('w')
ylabel('Phase');
title('Phase Spectrum')
grid on
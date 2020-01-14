function z = fs(x,T,a,b,c,d)
syms t;
f = 1/T;
w = 2*pi*f;
n = -20:20;
c = (int(x.*exp(-1i*w*t*n),t,c,d))/T
f1 = sum(c.*exp(1i*w*t*n));
t = a:0.01:b;
z = subs(f1,t);
x2 = subs(x,t);
c1 = abs(c)
h = angle(c)
figure(1)
subplot(3,1,1)
plot(t,z)
xlabel('t')
ylabel('f(t)');
title('Fourier Series')
grid on

subplot(3,1,2)
stem(n,c1)
xlabel('n')
ylabel('|cn|');
title('Magnitude Spectrum')
grid on

subplot(3,1,3)
stem(n,h)
xlabel('n')
ylabel('phase');
title('Phase Spectrum')
grid on

figure(2)
plot(t,x2)
end
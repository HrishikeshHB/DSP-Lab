clc
clear all
close all
t=0:1/10:100;
x=zeros(1,length(t));
for i=1:length(t)
   x(i) = 10;
end
subplot(1,2,1)
plot(t,x)
grid on
axis([0 100 0 12])
xlabel('t')
ylabel('Volt')
title('DC signal (CT)')

subplot(1,2,2)
stem(t,x)
grid on
axis([0 100 0 12])
xlabel('t')
ylabel('Volt')
title('DC signal (DT) fs=10Hz')

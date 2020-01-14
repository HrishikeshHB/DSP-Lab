function z = dft(x,N)
syms k;
n = 0:N-1;
f1 = sum(x.*exp((-1i*2*pi*k*n)/N));
k = 0:N-1;
z = subs(f1,k);
end
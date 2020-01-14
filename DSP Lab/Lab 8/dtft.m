function z = dtft(x,a,b,c,d)
syms w;
n = c:d;

f1 = sum(x.*exp(-1i*w*n));

w = a:0.01:b;
z = subs(f1,w);



end
clc
clear all
close all
a=imread('cameraman.tif');

r = 2;
b = size(a);
c = b(1);
d = b(2);
t = c*r;
y = d*r;
e = zeros(t,y);
f = zeros(r,r);
h = zeros(r,r);
g = ones(r,r);
for m=1:r:t
    for n=1:r:y
        e(m,n) = a((m+r-1)/r,(n+r-1)/r);
        f = e(m:m+r-1,n:n+r-1);
        h = ifft2(fft2(f).*fft2(g));
        e(m:m+r-1,n:n+r-1)=h;
        
    end
end    
q=e;
figure(1)
imshow(a)
title('Original image')
figure(2)
imshow(uint8(q))
title('Enhanced image')
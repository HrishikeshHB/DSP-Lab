function x=san(A)
s=0;
%U can use numel(A) also or prod(size(a))
d=size(A);
p = 1;
for i=1:length(d)
    p = p*d(i);
end
for i=1:p
    s=s+A(i);
end
    x=s;
end

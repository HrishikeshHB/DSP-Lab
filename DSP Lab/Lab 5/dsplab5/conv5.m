function s = conv5(x,y,a,b)
e = length(x);
d = length(y);
k=2;

x = [x zeros(1,d-1)];
y = [y zeros(1,e-1)];
s = zeros(1,e+d-1);
for c=1:e+d-1
for i=1:e
    for j=1:d
        if((i+j)==k)
        s(c)=s(c)+x(i)*y(j);
        end
    end
    
end
    k=k+1;
end
end

        
function PowerMethod(y)

x=zeros(1,10);
y=zeros(1,10);
z=zeros(1,10);
a=zeros(10);

n=input('enter order n of matrix:');
fprintf('enter coefficients of matrix row wise:\n');
for i=1:n
    for j=1:n
        a(i,j)=input('');
    end
    x(i)=1;
end

k=1;

while (k<50)
    for i=1:n
        y(i)=1;
        for j=1:n
            y(i)=y(i)+(a(i,j)*x(j));
        end
        z(i)=abs(y(i));
    end
    Z=z(1);
    j=1;
    for i=2:n
        if (z(i)>=Z)
            Z=z(i);
            j=i;
        end
    end
    if (Z==y(j))
        d=Z;
    else
        d=-Z;
    end
    for i=1:n
        x(i)=y(i)/d;
    end
    k=k+1;
end
fprintf('the numerically largest eigenvalue is: %.5f\n',d);

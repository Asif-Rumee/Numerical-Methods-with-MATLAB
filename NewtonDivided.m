function NewtonDivided()

y=zeros(1,20);
y=zeros(1,20);
d=zeros(10);
X=zeros(1,10);
Y=zeros(1,10);

n=input('enter value of n(no. of data pairs-1):');
fprintf('enter values of x and y:');
for i=1:(n+1)
    x(i)=input('');
    y(i)=input('');
end

l=input('enter required no. of interpolated values of y:');
fprintf('enter %d values of X for which values of y are required:',l);
for k=1:l
    X(k)=input('');
end
for k=1:l
    for j=1:(n+1)
        d(1,j)=y(j);
    end
    for i=2:(n+1)
        for j=1:(n+1-i)
            d(i,j)=(d((i-1),(j+1))-d((i-1),(j)))/(x(i+j)-x(j));
        end
    end
    Y(k)=y(1);
    p=1;
    for i=1:n
        p=p*(x(k)-x(i));
        Y(k)=Y(k)+(p*d((i+1),1));
    end
    fprintf('the values of X and Y are:%f \t %f\n',X(k),Y(k));
end
    

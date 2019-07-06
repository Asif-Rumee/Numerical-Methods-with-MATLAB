function NewtonForwd()

y=zeros(1,20);
f=zeros(10);
X=zeros(1,10);
Y=zeros(1,10);

n=input('enter value of n(no. of data pairs-1):');
x0=input('enter initial value of X:');
h=input('enter step size h:');
fprintf('enter values of y:');
for i=1:(n+1)
    y(i)=input('');
end
l=input('enter required no. of interpolated values of y:');
fprintf('enter %d values of X for which values of y are required:',l);
for k=1:l
    X(k)=input('');
%end
for j=1:(n+1)
    f(1,j)=y(j);
end
for i=2:(n+1)
    for j=1:(n+1-i)
        f(i,j)=f((i-1),(j+1))-f((i-1),(j));
    end
end
end
for k=1:l
    u=((X(k)-x0)/h);
    Y(k)=y(1);
    p=1;
    for i=2:(n+1)
        p=(p*((u-i+1)/i));
        Y(k)=Y(k)+(p*f(i,1));
    end
    fprintf('the values of X and Y are:%f \t %f\n',X(k),Y(k));
end
    

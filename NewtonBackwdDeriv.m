function NewtonBackwdDeriv()

x=zeros(1,20);
y=zeros(1,20);
f=zeros(20);

n=input('enter value of n(no. of data pairs-1):');
fprintf('enter values of x and y:');
for i=1:(n+1)
    x(i)=input('');
    y(i)=input('');
end
h=x(2)-x(1);

for j=1:(n+1)
    f(1,j)=y(j);
end
for i=2:(n+1)
    for j=i:(n+1)
        f(i,j)=f((i-1),(j))-f((i-1),(j-1));
    end
end
s=0;
for i=2:(n+1)
    s=s+((f(i,(n+1))/(i-1)));
end
dy=s/h;    
fprintf('\nderivative at final point %.2f is: %.5f\n',x(n+1),dy);
end
    

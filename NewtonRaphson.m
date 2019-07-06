function NewtonRaphson(y,z)

x=zeros(1,10);
f=zeros(1,10);
g=zeros(1,10);

a=0;
b=1;
while (y(a)*y(b)>0)
    a=b;
    b=a+1;
end
x(1)=a;

for i=1:10
    f(i)=y(x(i));
    g(i)=z(x(i));
    x(i+1)=x(i)-(f(i)/g(i));
    %if abs((x(i+1)-x(i))<(10^-15))
        %fprintf('the positive root is: %.5f',x(i));
        %return;
    %end
end
fprintf('the positive root is: %.5f\n',x(i));

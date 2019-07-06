function RegulaFalsi(y)

x=zeros(1,10);
f=zeros(1,10);

a=1;
b=2;
while (y(a)*y(b)>0)
    a=b;
    b=a+1;
end
x(1)=a;
g=y(b);

for i=1:10
    f(i)=y(x(i));
    x(i+1)=((x(i)*g)-(b*f(i)))/(g-f(i));
    if abs((x(i+1)-x(i))<(10^-6))
        fprintf('the positive root is: %.5f\n',x(i));
        return;
    end
end
fprintf('the positive root is: %.5f\n',x(i));

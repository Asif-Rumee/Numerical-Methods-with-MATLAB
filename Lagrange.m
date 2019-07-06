function Lagrange()

x=zeros(1,20);
y=zeros(1,20);
a=zeros(1,10);
X=zeros(1,10);
Y=zeros(1,10);

n=input('enter value of n(no. of data pairs-1):');
fprintf('enter values of x and y:');
for i=1:(n+1)
    x(i)=input('');
    y(i)=input('');
end
l=input('enter required no. of interpolated values of y:');
fprintf('enter %d values of X for which values of Y are required:',l);
for k=1:l
    X(k)=input('');
end
for k=1:l
    for i=1:(n+1)
        a(i)=1;
        for j=1:(n+1)
            if (i~=j)
                a(i)=a(i)*((X(k)-x(j))/(x(i)-x(j)));
            end
        end
    end
    Y(k)=0;
    for i=1:(n+1)
        Y(k)=Y(k)+(a(i)*y(i));
    end
    fprintf('the values of Y and X are:%f \t %f\n',X(k),Y(k));
end
    

function LagrangeInverse()

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
l=input('enter required no. of interpolated values of X:');
fprintf('enter %d values of Y for which values of X are required:',l);
for k=1:l
    Y(k)=input('');
end
for k=1:l
    for i=1:(n+1)
        a(i)=1;
        for j=1:(n+1)
            if (i~=j)
                a(i)=a(i)*((Y(k)-y(j))/(y(i)-y(j)));
            end
        end
    end
    X(k)=0;
    for i=1:(n+1)
        X(k)=X(k)+(a(i)*x(i));
    end
    fprintf('the values of Y and X are:%f    %f\n',Y(k),X(k));
end
    

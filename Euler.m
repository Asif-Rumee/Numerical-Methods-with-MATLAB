function Euler(dF)

x0=input('enter value of x0:');
y0=input('enter value of y0:');
h=input('enter value of h:');
x=input('enter value of x:');
x1=x0;
y1=y0;

fprintf('\n \n');    

while 1
    if (x1>x)
        return;
    end
    y1=y1+(h*dF(x1,y1));
    x1=x1+h;
fprintf('when x= %.2f   y=%.2f\n',x1,y1);
end

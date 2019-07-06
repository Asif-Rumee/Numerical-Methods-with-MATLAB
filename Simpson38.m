function Simpson38(y)

x0=input('enter value of x0: ');
xn=input('enter value of xn: ');
n=input('enter value of n: ');
h=(xn-x0)/n;
s=y(x0)+y(xn);
i=3;
while rem(i,3)==0
    s=s+(2*y(x0+i*h));
    i=i+1;
end
j=1;
while rem(j,3)~=0
    s=s+(3*y(x0+j*h));
    j=j+1;
end

sr=((3*h)/8)*s;
fprintf('value of integral is %.2f\n',sr);

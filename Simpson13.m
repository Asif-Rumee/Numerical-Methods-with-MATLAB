function sSimpson13(y)

x0=input('enter value of x0');
xn=input('enter value of xn');
n=input('enter value of n');
h=(xn-x0)/n;
s=y(x0)+y(xn)+(4*y(x0+h));
for i=3:2:(n-1)
    s=s+(4*y(x0+i*h))+(2*y(x0+(i-1)*h));
end
sr=(h/3)*s;
fprintf('value of integral is %.2f\n',sr);

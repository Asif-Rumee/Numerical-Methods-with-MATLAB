function Trapezoidal(y)

x0=input('enter value of x0:');
xn=input('enter value of xn:');
n=input('enter value of n:');
h=(xn-x0)/n;
s=y(x0)+y(xn);
for i=1:(n-1)
    s=s+(2*y(x0+i*h));
end
sr=(h/2)*s;
fprintf('value of integral is:%.2f\n',sr);

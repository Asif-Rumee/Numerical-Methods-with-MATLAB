function RungeKuttaThirdOrder(f)

y=zeros(1,200);
t=zeros(1,200);

m=input('enter no. of t values(i.e.,t0,t1,t2,....):');
fprintf('enter values of t0,t1,t2,...:');
for i=1:m
    t(i)=input('');
end
y(1)=input('enter y[0] value:');

for j=1:(m-1)
    h=t(j+1)-t(j);
    fprintf('\nH=%f',h);
    k1=h*f(t(j),y(j));
    k2=h*f((t(j)+(h/2.0)),(y(j)+(.5*k1)));
    k3=h*f((t(j)+h),(y(j)+(2*k2)-k1));
    del=((k1+(4*k2)+k3)/6.0);
    y(j+1)=y(j)+del;

end

for j=1:m
    fprintf('\nJ=%d, T[J]=%f, Y[J]=%f\n',j-1,t(j),y(j));
    
end
    
    

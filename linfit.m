function [A,B,Rsquare]= linfit(x,y)
x=x(~isnan(x));
y=y(~isnan(x));
y=y(~isnan(y));
x=x(~isnan(y));
% Calculate a linear least squares fit of the form y=A+Bx 
% The function also return standard error in y, and the coefficients A and B
% [A,B,Rsquare]= fit(x,y)

sumx=0;   
sumy=0;
sxs=0;
sys=0;
sumxy=0;
linear=0;

N=length(x);
for i=1:N
 sumx=sumx+x(i);
 sumy=sumy+y(i);
 sxs=sxs+x(i)^2;
 sys=sys+y(i)^2;
 sumxy=sumxy+x(i)*y(i);
end

del=N*sxs-(sumx)^2;
dela=N*sys-(sumy)^2;

A=(sxs*sumy-sumx*sumxy)/del;

B=(N*sumxy-sumx*sumy)/del;

for i=1:N
 linear=linear+[y(i)-A-B*x(i)]^2;
end

Correlation=(N*sumxy-sumx*sumy)/sqrt(del)/sqrt(dela);

Rsquare=Correlation.^2;
return;

end
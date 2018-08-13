function [data,aE,bE,cE]=Lorenz(d1,d2,d3,Max_iter)
n=Max_iter; 
a=10;
h=0.01;
c=8/3;
b=28;

%initial x,y,z are 0.1%
z0=d3;
y0=d2;
x0=d1;

y=[x0 y0 z0];
 

for i=2:n
    ydot(1)=a*(y(i-1,2)-y(i-1,1));
    ydot(2)=b*y(i-1,1)-y(i-1,2)-y(i-1,1)*y(i-1,3);
    ydot(3)=y(i-1,1)*y(i-1,2)-c*y(i-1,3);
    y(i,:)=y(i-1,:)+h*ydot;
end
%this variables return from function for next iteration initial value
x=y(:,1);
z=y(:,3);
y=y(:,2);
aE=x(n);
bE=y(n);
cE=z(n);
%The results are in the range [0,256] and should be converted to the desired range.
data=abs(rem(1000*(x+y+z),256))/256;
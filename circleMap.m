
function y=chaos(Index,Initial_Value,Max_iter)

x(1)=Initial_Value;

%Circle map
a=0.5;
b=0.2;
	for i=1:Max_iter
		x(i+1)=mod(x(i)+b-(a/(2*pi))*sin(2*pi*x(i)),1);
	end
end
y=x;

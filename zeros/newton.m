function [x, k] = newton(f, df, x0, e1, e2)
if(abs(f(x0)) < e1)
	x = x0;
	return
end
k=1;
max_iter=1000;
while(k<max_iter)
	x1 = x0 - f(x0)/df(x0);
	if(abs(f(x1))<e1 || abs(x1-x0)<e2)
		x = x1;
		return
	end
	x0 = x1;
	k = k + 1;
end
end

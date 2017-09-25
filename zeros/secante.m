function [x, k] = secante(f, x0, x1, e1, e2)
if(abs(f(x0)) < e1)
	x = x0;
	return
end
if(abs(f(x1))<e1 || abs(x1-x0)<e2)
	x = x1;
	return
end
k=1;
max_iter=1000;
while(k<max_iter)
	x2 = x1 - f(x1)/(f(x1)-f(x0))*(x1-x0);
	if(abs(f(x2))<e1 || abs(x2-x1)<e2)
		x = x2;
		return
	end
	x0 = x1;
	x1 = x2;
	k = k + 1;
end
end

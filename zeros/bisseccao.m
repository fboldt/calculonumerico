function [x, k] = bisseccao(f, a, b, e)
if(b-a < e)
	x = (a+b)/2;
	return
end
k=1;
max_iter=1000;
while(k<max_iter)
	m = f(a);
	x = (a + b) / 2;
	if(m*f(x) > 0)
		a = x;
	else
		b = x;
	end
	if(b-a < e)
		x = (a+b)/2;
		return
	end
	k = k + 1;
end
end

function [x, k] = pontofixo(f, phi, x0, p1, p2)
k=1;
max_iter=1000;
while(k<max_iter)
	if(abs(f(x0))<p1)
		x = x0;
		return
	end
	x1 = phi(x0);
	if(abs(f(x1))<p1 || abs(x1-x0)<p2)
		x = x1;
		return
	end
	x0 = x1;
	k = k + 1;
end
end

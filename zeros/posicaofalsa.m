function [x, k] = posicaofalsa(f, a, b, e1, e2)
if(b-a < e1)
	x = (a+b)/2;
	return
end
if(abs(f(a)) < e2)
	x = a;
	return
end
if(abs(f(b)) < e2)
	x = b;
	return
end
k=1;
max_iter=1000;
while(k<max_iter && abs(b-a)>=e1)
	fa = f(a);
	fb = f(b);
	m = fa;
	x = (a*fb - b*fa) / (fb-fa);
	if(abs(f(x)) < e2)
		return
	end
	if(fa*f(x) > 0)
		a = x;
	else
		b = x;
	end
	if(b-a < e1)
		x = (a+b)/2;
		return
	end
	k = k + 1;
end
end

function [x, k] = bisseccao(f, a, b, p)
myplot(f, linspace(a, b, 1000));
k=1;
max_iter=1000;
while(k<max_iter && abs(b-a)>=p)
	k = k + 1;
	m = f(a);
	x = (a + b) / 2;
	if(m*f(x) > 0)
		a = x;
	else
		b = x;
	end
end
end

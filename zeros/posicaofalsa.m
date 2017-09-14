function [x, k] = posicaofalsa(f, a, b, p1, p2)
myplot(f, linspace(a, b, 1000));
k=1;
max_iter=1000;
while(k<max_iter && abs(b-a)>=p1)
	k = k + 1;
	fa = f(a);
	fb = f(b);
	if(abs(fa) < p2)
		x = a;
		return
	end
	if(abs(fb) < p2)
		x = b;
		return
	end
	x = (a*fb - b*fa) / (fb-fa);
	if(fa*f(x) > 0)
		a = x;
	else
		b = x;
	end
end
end

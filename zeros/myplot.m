function myplot(f, x)
plot(x,f(x))
hold on
plot(x,zeros(1,length(x)))
hold off
end

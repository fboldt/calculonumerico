function myplot(f, x)
plot(x,f(x))
hold on
plot(x,zeros(1,length(x)))
grid on
hold off
print -dpng 'plot.png'
end

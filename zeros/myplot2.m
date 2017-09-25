function myplot2(f1, f2, x)
plot(x,f1(x))
hold on
plot(x,f2(x))
plot(x,zeros(1,length(x)))
grid on
hold off
print -dpng 'plot.png'
end

a = linspace(0, 6, 13);
f = @(x) exp(sin(x));
y = f(a);
fplot(f,[0,6]);

hold on;
plot(a,y,'ok')

ni=@(x) newtonInterp(a,y,x);
fplot(ni,[0,6]);




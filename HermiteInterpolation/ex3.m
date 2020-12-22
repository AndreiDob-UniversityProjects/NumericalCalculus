nodes = linspace(-5, 5, 15);
f = @(x) sin(2*x);
fd= @(x) 2*cos(2*x);

#pkg load symbolic  
#syms x;  
#ff = f(x);  
#ffd = diff(ff, x) 
#der_values=ffd(nodes);

der_values=fd(nodes);
values = f(nodes);
fplot(f,[0,2*pi]);

hold on;
plot(nodes,values,'ok')

hi=@(x) Hermite_interp(nodes,values,der_values,x);
fplot(hi,[-5,5]);
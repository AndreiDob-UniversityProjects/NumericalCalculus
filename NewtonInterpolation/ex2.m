nodes = [ 1 2 3 4 5];
values = [ 22 23 25 30 2];
a=[2.5];
f=@(x) newtonInterp(nodes,values,x);
fplot(f,[1,5]);
hold on;
plot(nodes,values,'ok')

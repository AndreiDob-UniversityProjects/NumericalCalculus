grid on;hold on;
axis([0 2 -1 15]);
xticks(0:0.25:2);
yticks(-1:0.25:15);

f = @(x) x.^3+2*x.^2 -1;
fplot(f,[0,2]);

nodes=[0 0.5 0.75 1 2]
values=[-1 -0.375 0.546875 2 15]
plot(nodes,values,'ok')

grid on;hold on;
set(gca, "fontsize", 15)

%polynomial degree
k=1;
nodes=[1 2 3 4 5 6 7]
values=[13 15 20 14 15 13 10]

coefs_lsq=polyfit(nodes,values,k);
poly_lsq=@(x) polyval(coefs_lsq,x);

plot(nodes,values,'ok')
hold on;
fplot(poly_lsq,[1,10]);
temp_at_8=poly_lsq([8])
error=norm(values-poly_lsq(nodes))


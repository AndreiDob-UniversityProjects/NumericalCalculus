grid on;hold on;
set(gca, "fontsize", 15)

%polynomial degree
k1=1;
k2=3
nodes=[0 10 20 30 40 60 80 100]
values=[0.0061 0.0123 0.0234 0.0424 0.0738 0.1992 0.4736 1.0133]

coefs_lsq1=polyfit(nodes,values,k1);
poly_lsq1=@(x) polyval(coefs_lsq1,x);

coefs_lsq2=polyfit(nodes,values,k2);
poly_lsq2=@(x) polyval(coefs_lsq2,x);

hold on;
plot(nodes,values,'ok')

fplot(poly_lsq1,[0,100]);
fplot(poly_lsq2,[0,100]);

prediction1=poly_lsq1([45])
prediction2=poly_lsq2([45])

plot([45 45],[prediction1 prediction2],'*')

error1=norm(prediction1-0.095848)
error2=norm(prediction2-0.095848)




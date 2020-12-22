%nodes=[1 1.5 2 3 4]
%values=[0 0.17609 0.30103 0.47712 0.60206]
%newtonInterp(nodes, values,[2.5,3.25])

%axis ([x_lo x_hi y_lo y_hi])
%axis([-40 70 0 2]);
%xticks(-40:10:70);
%yticks(0:1:2);
%grid on;hold on;

grid on;hold on;
%aici pui x
%nodes=[-20 -10 0 10 35 40 45 50]
%aici pui y
%values=[0.87 0.9 0.93 0.96 1.07 1.10 1.13 1.15]
%asta ploteaza pct x si y
%plot(nodes,values,'ok')
ni=@(x) newtonInterp(nodes,values,x);
%asta ploteaza interpolare in intervalul pe care il dai
fplot(ni,[-20,50]);

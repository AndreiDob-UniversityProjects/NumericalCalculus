nodes = [0 pi/2 pi 3*pi/2 2*pi];
f = @(x) sin(x);
fd = @(x) cos(x);
values=f(nodes);
der_values=fd(nodes);
%at 0 and 2pi the secod derivative (-sin(x)) is 0. We put first derivative
spline_natural=spline(nodes,[1 values 1]);
%but actually they are the same :))
spline_clamped=spline(nodes,[der_values(1) values der_values(end)]);
func=f(pi/4)
cc_spline=ppval(spline_clamped,[pi/4])


fplot(f,[0,2*pi]);
hold on;
plot(nodes,ppval(spline_clamped,nodes),'g')
hold on;
plot(nodes,ppval(spline_natural,nodes),'r')


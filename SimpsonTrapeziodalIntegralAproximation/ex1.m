clf,hold on; grid on; set(gca,'FontSize',15);

a=0; b=1;
f=@(x) 2./(1+x.^2);
aprox_trapez=(b-a)/2 *(f(a)+f(b))

x=linspace(a,b,1000);
plot(x,f(x),'b');
plot([a,a,b,b],[0,f(a),f(b),0],'g');

aprox_simpson=(b-a)/6 * (f(a)+4*f((a+b)/2)+f(b))
aprox_quad=quad(f,a,b)


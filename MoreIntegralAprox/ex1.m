clc;clf,hold on; grid on; set(gca,'FontSize',15);

a=1; b=1.5;
f=@(x) 1./(e.^(x.^2));
aprox_rect=(b-a) *f((a+b)/2)

x=linspace(a,b,1000);
plot(x,f(x),'b');
plot([a,a,b,b],[0,f((a+b)/2),f((a+b)/2),0],'g');

aprox_rep_rect150=reprect(f,a,b,150)
aprox_rep_rect500=reprect(f,a,b,500)
aprox_quad=quad(f,a,b)


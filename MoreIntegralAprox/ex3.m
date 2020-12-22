clc;clf,hold on; grid on; set(gca,'FontSize',15);

a=1; b=3;
f=@(x) (100./(x.^2)).*sin(10./x);

x=linspace(a,b,1000);
plot(x,f(x),'b');

aprox_adaptive=aquad(f,a,b,0.0001);
aprox_repsim_50=repsim(f,a,b,50);
aprox_repsim_100=repsim(f,a,b,100);
aprox_quad=quad(f,a,b);

printf("aprox_adaptive= %.10f\n",aprox_adaptive)
printf("aprox_repsim_50= %.10f\n",aprox_repsim_50)
printf("aprox_repsim_100= %.10f\n",aprox_repsim_100)
printf("aprox_quad= %.10f\n",aprox_quad)


clc;
a=0;
b=0.5;

f=@(t)  1./e.^(t.^2);

aprox_4=2/sqrt(pi)* repsim(f,a,b,4);
aprox_10=2/sqrt(pi)* repsim(f,a,b,10);
aprox_quad=2/sqrt(pi)*quad(f,a,b);
printf("aprox_4= %.10f\n",aprox_4)
printf("aprox_10= %.10f\n",aprox_10)
printf("correct= %.10f\n",aprox_quad)

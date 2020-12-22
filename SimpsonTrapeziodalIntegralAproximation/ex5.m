clc;
a=0;
b=pi;
f=@(x)  1./(4+sin(20.*x));
aprox_10=repsim(f,a,b,10)
aprox_30=repsim(f,a,b,30)
aprox_quad=quad(f,a,b)
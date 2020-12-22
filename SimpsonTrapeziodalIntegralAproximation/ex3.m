p=75;
r=110;

a=0;
b=2*pi;

f=@(x) (1-(p/r)^2*sin(x)).^(1/2);
area1=reptrap(f,a,b,2);
aprox1=60*r/(r^2-p^2) * area

area2=reptrap(f,a,b,10);
aprox2=60*r/(r^2-p^2) * area
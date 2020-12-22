clc;

a=0; b=1;
f=@(x) 2./(1+x.^2);

trap = romberg(f, a, b, 5);
for i=2:5
  i
  error=trap(i,i)-trap(i-1,i-1)
endfor

result_5=trap(5,5)
aprox_quad=quad(f,a,b)

for n=1:7
  n
  error=romberg2(f, a, b, n)-romberg2(f, a, b, n-1)
endfor
result_6=romberg2(f, a, b, 6)
aprox_quad=quad(f,a,b)




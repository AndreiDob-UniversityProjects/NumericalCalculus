a=1;
b=2;
f=@(x)  x.*log(x);
for i=1:15
  n=i
  aprox=reptrap(f,a,b,n)
endfor
best=reptrap(f,a,b,10)

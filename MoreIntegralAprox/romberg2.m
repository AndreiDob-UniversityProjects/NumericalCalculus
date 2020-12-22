function q=romberg2(f, a, b, n)
  h=b-a;
  q=h/2*(f(a)+f(b));
  for k=1:n
    s=0;
    for j=1:(2^(k-1))
      s=s+f(a+(2*j-1)/(2^k));
    endfor
    
    q=(1/2)*q+h/(2^k)*s;
  endfor
endfunction

function fx=f(x)
  fx=x;
  for i=1:length(x)
    fx(i)=(1+cos(pi*x(i)))/(1+x(i));
  end
endfunction

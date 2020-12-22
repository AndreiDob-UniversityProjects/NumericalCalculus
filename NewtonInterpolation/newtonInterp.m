function Lx = newtonInterp(nodes, values, x)
  table = divDiff(nodes, values);
  Lx=x;
  for i = 1 : length(x)
    prods=[1 cumprod(x(i)-nodes(1:end-1))];
    Lx(i) = table(1,:)*prods';
  endfor
endfunction

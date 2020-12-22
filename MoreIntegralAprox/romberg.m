function Trap = romberg(f, a, b, n)
  Trap = NaN(n);
  for i = 1:n
      %tot timpul se imart la 2, deci de fiecare data vor fi de 
      %2 ori mai multe diviziuni
      Trap(i, 1) = reptrap(f, a, b, 2^(i-1));
      for j = 2:i
          Trap(i, j) = (4^(-j+1) * Trap(i-1,j-1) - Trap(i,j-1)) / (4^(-j+1) - 1);
      endfor
  endfor
endfunction



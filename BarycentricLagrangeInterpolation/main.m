function main()
  format long;
  nodes=[1930 1940 1950 1960 1970 1980]
  values=[123203 131669 150697 179323 203212 226505]
  pb1=LagrangeBary(nodes, values,[1955,1995])
  
  x=[81,100,121,144]
  sqrt_x=[9,10,11,12]
  pb2=LagrangeBary(x, sqrt_x,[115])

  a=linspace(0,10,21);
  f=@(x) f(x);
  fplot(f,[0,10]);
  hold on;
  %plot(a,fa,'ok')
  fa=f(a);
  Lx=@(x) LagrangeBary(a, fa,x);
  fplot(Lx,[0,10]);
  plot(a,fa,'ok')
endfunction

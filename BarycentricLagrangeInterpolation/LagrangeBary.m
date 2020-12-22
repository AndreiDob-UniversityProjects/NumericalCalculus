function Lx=LagrangeBary(nodes,values,x)
  A=CoeffBary(nodes);
  Lx=x;
  for j=1:length(x)
    x_pos_node=find(nodes==x(j));
    if length(x_pos_node)>0
      Lx(j)=values(x_pos_node); 
    else
      Lx(j)=sum(A.*values./(x(j)-nodes))/...
            sum(A./(x(j)-nodes));
     endif
  endfor
endfunction

function A=CoeffBary(nodes)
  A=nodes;
  for i=1:length(nodes)
    A(i)=1/prod(nodes(i)-nodes(nodes!=nodes(i)));
  endfor
endfunction

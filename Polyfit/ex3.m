
%polynomial degree
k=2;

clf;axis equal;axis([0 3 0 5]);
xticks(0:0.5:3);yticks(0:0.5:5);
grid on;hold on;
#set(gca, "fontsize", 15)
[x,y]=ginput(1);
nodes=x;values=y;
i=1;
while ~isempty([x,y])
  plot(x,y,'*k','MarkerSize',10);
  [x,y]=ginput(1);
  i=i+1;
  nodes=[nodes,x];values=[values,y];
endwhile

coefs_lsq=polyfit(nodes,values,k);
poly_lsq=@(x) polyval(coefs_lsq,x);

plot(nodes,values,'ok')
hold on;
fplot(poly_lsq,[0,3]);
nodes=[1 2];
values=[0 0.6931];
der_values=[1 0.5];
ln_x=log(1.5)
interp_x=Hermite_interp(nodes,values,der_values,[1.5])
err=abs(ln_x-interp_x)
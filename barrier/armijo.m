function w = armijo(phi ,s, x)
r = 2;
p = 0;
while (phi(x+r^p*s) < phi(x) - 1/2*r^p*s'*s)
    p = p + 1;
end
gama = 0.8;
q = 0;
while (phi(x+r^p*gama^q*s) > phi(x) - 1/2*r^p*gama^q*s'*s)
    q=q+1;
end
w=r^p*gama^q;
end
function [count,x] = secant(phi,grad,x, H, R, N,count)
E=eye(N);
while (norm(grad) > 1e-15)
    count = count +1;
    s = -H*grad;
    w = armijo(phi,s, x);
    x=x + w*s;
    g_old = grad;
    for i=1:N
        grad(i) = (phi( x+R*E(:,i)) - phi(x))/R;
    end
    Dx = w*s;
    Dg = grad - g_old;
    if (abs(Dx'*Dg) == 0)
        break;
    else
        H=H + Dx*Dx'/(Dx'*Dg)- H*Dg*(H*Dg)'/(Dg'*H*Dg);
    end
end

end


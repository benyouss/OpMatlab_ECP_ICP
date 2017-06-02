function x_0=barrier(myfunc, const_ineq,x_0)
R=1e-6;
N = length(x_0);
I = eye(N);
r=1.1;
mu=0.4;
while(r>R)
    phi =@(x)  barrier_set(myfunc, const_ineq ,r,x);
    grad = zeros(N,1);
    for i=1:N
        grad(i) = (phi(x_0 + R*I(:,i)) - phi(x_0)) / R;
    end
    [count,x_0] = secant(phi, grad , x_0, I, R,N,0);
    r = r*mu;
end

end
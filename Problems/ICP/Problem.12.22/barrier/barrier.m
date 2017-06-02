function x_0=barrier(myfunc, const_ineq,x_0)
R=10^(-7);
N = length(x_0);
I = eye(N);
r=10;
mu=0.5;
while(r>R)
    fprintf('searching ... \n');
    phi =@(x)  barrier_set(myfunc, const_ineq ,r,x);
    grad = zeros(N,1);
    for i=1:N
        grad(i) = (phi(x_0 + R*1e-5*I(:,i)) - phi(x_0)) / (R*1e-5);
    end
    [count,x_0] = secant(phi, grad , x_0, I, R,N,0);
    r = r*mu;
end

end
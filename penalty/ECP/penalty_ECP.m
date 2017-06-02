
function x = penalty_ECP(myfunc, const_eq, x_init)
R=1e-6;
N = length(x_init);
I = eye(N);
sigma = 2;
x=x_init;
while(1)
    grad = zeros(N,1);
    phi =@(x) penalty_set_ECP(myfunc, const_eq , sigma, x);
    for i=1:N
        grad(i) = (phi(x+R*I(:,i)) -phi(x))/R;
    end
    [count,x] = secant(phi,grad,x, I, R, N,0);
    if (norm(const_eq(x)) <= R)
        break;
    end
    sigma=updateSigma(count, sigma, 1.25, 5);
end
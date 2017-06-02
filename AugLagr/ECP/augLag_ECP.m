
function x=augLag_ECP(func, const_eq, x_init)
R=1e-6;
N = length(x_init);
I = eye(N);
lambda = 0.1;
x=x_init;
M = length(const_eq(x));
sigma= ones(M,1); % dual variable
while(1)
    grad = zeros(N,1);
    phi =@(x ) augLag_set_ECP(func, const_eq ,lambda,sigma, x);
    for i=1:N
        grad(i) = (phi(x+R*I(:,i)) -phi(x))/R;
    end
    [count,x] = secant(phi,grad,x, I, R, N,0)
    if (norm(const_eq(x)) <= R)
        break;
    end
    sigma=updateSigma(count, sigma, 1.25, 5);
end


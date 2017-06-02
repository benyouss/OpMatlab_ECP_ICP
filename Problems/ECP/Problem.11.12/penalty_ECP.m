
function x = penalty_ECP(myfunc, const_eq, x_init)
R=1e-6;
N = length(x_init);
I = eye(N);
sigma = 2;
x=x_init;
ind=0;
while(ind<100)
    ind=ind+1;
    fprintf('searching ... \n');
    grad = zeros(N,1);
    phi =@(x) penalty_set_ECP(myfunc, const_eq , sigma, x);
    
    for i=1:N
        grad(i) = (phi(x+R*1e-5*I(:,i)) -phi(x))/(R*1e-5);
    end
    [count,x] = secant(phi,grad,x, I, R, N,0);
    if (norm(const_eq(x)) <= R)
        break;
    end
    sigma=updateSigma(count, sigma, 1.25, 5);
end
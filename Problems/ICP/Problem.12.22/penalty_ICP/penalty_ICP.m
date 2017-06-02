
function x = penalty_ICP(myfunc, const_ineq, x_init)
R=1e-7;
N = length(x_init);
I = eye(N);
sigma = 15;
x=x_init;
ind=0;
while(ind<100)
    ind=ind+1;
    fprintf('searching ... \n');
    grad = zeros(N,1);
    phi =@(x) penalty_set_ICP(myfunc, const_ineq , sigma, x);
    for i=1:N
        grad(i) = (phi(x+R*1e-1*I(:,i)) -phi(x))/(R*1e-1);
    end
    H = eye(N);
    count = 0;
    [count,x] = secant(phi,grad,x, H, R, N,count);
    if (norm(const_ineq(x)) <= R)
        break;
    end
    sigma=updateSigma(count, sigma, 1.25, 5);
end
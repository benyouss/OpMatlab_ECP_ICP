
function x = penalty_ICP(myfunc, const_ineq, x_init,R)
R=1e-6;
N = length(x_init);
I = eye(N);
sigma = 150;
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
    [count,x] = secant(phi,grad,x, I, R, N,0);
    if (norm(const_ineq(x)) <= R)
        break;
    end
    sigma=updateSigma(count, sigma, 1/0.7, 1/0.3);
end
end
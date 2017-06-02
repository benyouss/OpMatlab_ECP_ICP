
function x = penalty_EICP(myfunc,const_eq, const_ineq, x_init)
R = 1e-6;
N = length(x_init);
I = eye(N);
x=x_init;
ind=0;
while(1)
    fprintf('searching ... \n');
    sigma=4*(ind+1);
    grad = zeros(N,1);
    phi =@(x) penalty_set_EICP(myfunc,const_eq, const_ineq , sigma, x);
    for i=1:N
        grad(i) = (phi(x+R*1e-6*I(:,i)) -phi(x))/(R*1e-6);
    end
    H = eye(N);
    count = 0;
    [count,x] = secant(phi,grad,x, H, R, N,count);
    
    if (norm(const_eq(x))< 10^(-9))
        break;
     elseif(ind > 300)
         break;
    elseif (count > 10) 
        ind= ind*2;
    elseif count < 10 
        ind = ind/5;
    end
    ind=ind+1;
end
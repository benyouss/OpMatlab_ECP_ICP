function phi = penalty_set_ECP(myfun, const_ineq, sigma, x)
phi = myfun(x) + 1/2*sigma*sum(max(const_ineq(x),0).^2);
end


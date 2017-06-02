function phi = penalty_set_EICP(myfun, const_eq, const_ineq, sigma, x)
phi = myfun(x) + 1/2*sigma*norm(const_eq(x)) + sigma*sum(max(const_ineq(x),0).^2);
end
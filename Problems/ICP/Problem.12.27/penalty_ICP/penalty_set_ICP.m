function phi = penalty_set_ICP(myfun, const_ineq, sigma, x)
phi = myfun(x) + sigma*sum(max(const_ineq(x),0).^2);
end


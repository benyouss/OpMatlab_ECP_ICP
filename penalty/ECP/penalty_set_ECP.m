function phi = penalty_set_ECP(myfun, const_eq, sigma, x)
phi = myfun(x) + 1/2*sigma*sum(const_eq(x).^2);
end


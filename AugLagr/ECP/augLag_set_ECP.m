% declare augmented Lagrangian function. File name: augmented_Lag_fun.m
function phi = augLag_set_ECP(func, const_eq, lambda, sigma, x)
phi = func(x) + 1/2*lambda*const_eq(x)'*const_eq(x) + sum(sigma.*const_eq(x));



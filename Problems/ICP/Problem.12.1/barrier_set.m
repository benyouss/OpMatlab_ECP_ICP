% barrier function. File name: barrier function.m
function phi = barrier_set(myfun, const_ineq, r, x)
phi = myfun(x) - r*sum(g(-const_ineq(x)));
% my log function, to overwrite the Matlab log function
function x = g(x)
for j=1:length(x)
    if x(j) > 0
        x(j) = log(x(j));
    else
        x(j) = -1e9;
    end
end


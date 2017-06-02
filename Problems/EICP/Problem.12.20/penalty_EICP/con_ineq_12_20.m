function c = con_ineq_12_20( x)
%% ineq form : h(x) <= 0
for i=1:16
    c(i) = -x(i);
    c(16+i) = x(i) - 5;
end
end


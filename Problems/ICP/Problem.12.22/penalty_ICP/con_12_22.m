function c = con_12_22( x)
%% ineq form : h(x) <= 0
for i=1:3
    c(i) = -x(i);
    c(i+3) = x(i) - 42;
end
c(7) = -(x(1) + 2*x(2) + 2*x(3));
c(8) = -c(7) - 72;

end


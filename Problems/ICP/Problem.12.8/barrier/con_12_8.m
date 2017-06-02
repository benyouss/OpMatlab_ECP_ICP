function con = con_12_8( x)
%% ineq form : h(x) <= 0
con(1)= -x(2)^2 - x(1);
con(2)= -x(1)^2 - x(2);
con(3)= x(1) - 1/2;
con(4)= -x(1) - 1/2;
con(5)= -x(1)^2 - x(2)^2 + 1;
end


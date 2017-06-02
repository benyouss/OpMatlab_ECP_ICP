function con = con_12_1( x)
%% ineq form : h(x) <= 0
for i=1:5
    con(i)= -x(i);
    con(i+5)= -i + x(i);
end
end


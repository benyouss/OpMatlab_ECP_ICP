function con = con_11_6(x)
A=[0, 50 , 50 , 75, 75, 75, 100, 100];
T=[0, 25 , 50, 100, 150, 200, 290, 380];
g=32;
qp=0;
q=0;
for i=2:8
    q = .5*(A(i)*sin(x(i-1))-g).*(T(i) - T(i-1)).^2 + qp*(T(i) - T(i-1)) + q;
    qp = (A(i)*sin(x(i-1))-g).*(T(i) - T(i-1)) + qp;
end
con(1) = q -100000;
con(2) = qp - 1000;

end


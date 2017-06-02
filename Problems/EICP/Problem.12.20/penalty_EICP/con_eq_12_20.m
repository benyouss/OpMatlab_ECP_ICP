function c = con_eq_12_20( x)
%% ineq form : h(x) <= 0
c(1) = 0.22*x(1) + 0.20*x(2) + 0.19*x(3) + 0.25*x(4) + 0.15*x(5) + 0.11*x(6) + 0.12*x(7) + 0.13*x(8) + x(9) - 2.5;
c(2) = -1.46*x(1) - 1.3*x(3)  + 1.82*x(4)  - 1.15*x(5) + 0.8*x(7)  + x(10) - 1.10;
c(3) = 1.29*x(1) - 0.89*x(2)  - 1.16*x(5)  - 0.96*x(6) - 0.49*x(8)  + x(11) + 3.10;
c(4) = -1.10*x(1) - 1.06*x(2)  + 0.95*x(3)  - 0.54*x(4) - 1.78*x(6)  - 0.41*x(7) + x(12) +3.5;
c(5) = -1.43*x(4) + 1.51*x(5)  + 0.59*x(6)  - 0.33*x(7) - 0.43*x(8)  + x(13) - 1.30;
c(6) = -1.72*x(2)  -0.33*x(3)  + 1.62*x(5)  + 1.24*x(6) + 0.21*x(7)  - 0.26*x(8) +x(14) -2.10;
c(7) = 1.12*x(1) + 0.31*x(4)  + 1.12*x(7)  - 0.36*x(9)  + x(15) -2.30;
c(8) = 0.45*x(2) + 0.26*x(3)  -1.10*x(4)  + 0.58*x(5) -1.03*x(7)  + 0.1*x(8) +x(16) + 1.50;
end 
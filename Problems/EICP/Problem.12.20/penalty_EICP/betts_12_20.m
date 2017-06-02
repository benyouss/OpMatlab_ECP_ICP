clc
x_0=zeros(16,1);
start = cputime;
x = penalty_EICP(@qestion_12_20, @con_eq_12_20,@con_ineq_12_20, x_0);
finish = cputime - start;

fprintf('x* =\n');
fprintf('%f\n', x);
fprintf('f*= %f\n',  qestion_12_20(x));
fprintf('running time = %f\n', finish);

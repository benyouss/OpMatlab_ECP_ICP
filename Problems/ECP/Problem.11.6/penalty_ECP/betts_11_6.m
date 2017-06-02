clc
x_0 = [.5;.5;.5;.5;.5;.5;.5];
start = cputime;
x = penalty_ECP(@qestion_11_6, @con_11_6, x_0);
finish = cputime - start;

fprintf('x* =\n');
fprintf('%f\n', x);
fprintf('f*= %f\n', - qestion_11_6(x)*1e2);
fprintf('running time = %f\n', finish);

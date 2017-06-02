clc
x_0 = [.7;.2;.1];
start = cputime;
x = penalty_ECP(@qestion_11_8, @con_11_8, x_0);
finish = cputime - start;

fprintf('x* =\n');
fprintf('%f\n', x);
fprintf('f*= %f\n', - qestion_11_8(x)*1e5);
fprintf('running time = %f\n', finish);

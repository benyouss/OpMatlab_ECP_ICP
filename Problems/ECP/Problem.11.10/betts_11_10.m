clc
x_0 = [2;2];
start = cputime;
x = penalty_ECP(@qestion_11_10, @con_11_10, x_0);
finish = cputime - start;

fprintf('x* =\n');
fprintf('%f\n', x);
fprintf('f*= %f\n', - qestion_11_10(x));
fprintf('running time = %f\n', finish);

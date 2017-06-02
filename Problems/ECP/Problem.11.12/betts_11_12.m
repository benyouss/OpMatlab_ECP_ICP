clc
x_0 = [-1.2;1];
start = cputime;
x = penalty_ECP(@qestion_11_12, @con_11_12, x_0);
finish = cputime - start;

fprintf('x* =\n');
fprintf('%f\n', x);
fprintf('f*= %f\n', qestion_11_12(x));
fprintf('running time = %f\n', finish);

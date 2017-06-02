clc
x_0 = [10; 10; 10];
start = cputime;
x = penalty_ICP(@qestion_12_22, @con_12_22, x_0);
finish = cputime - start;

fprintf('x* =\n');
fprintf('%f\n', x);
fprintf('f*= %f\n',  qestion_12_22(x));
fprintf('running time = %f\n', finish);

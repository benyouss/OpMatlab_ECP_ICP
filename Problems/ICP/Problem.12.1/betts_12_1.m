clc
x_0=[2;2;2;2;2];
start = cputime;
x = barrier(@qestion_12_1, @con_12_1, x_0);
finish = cputime - start;

fprintf('x* =\n');
fprintf('%f\n', x);
fprintf('f*= %f\n', qestion_12_1(x));
fprintf('running time = %f\n', finish);

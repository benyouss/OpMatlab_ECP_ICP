clc
x_0=[-2;1];
start = cputime;
x = barrier(@qestion_12_8, @con_12_8, x_0);
finish = cputime - start;

fprintf('x* =\n');
fprintf('%f\n', x);
fprintf('f*= %f\n',  qestion_12_8(x));
fprintf('running time = %f\n', finish);

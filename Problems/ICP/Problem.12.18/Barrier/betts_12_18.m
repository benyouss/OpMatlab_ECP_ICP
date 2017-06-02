clc
x_0 = [78.62 ; 33.44; 31.07; 44.18; 35.32];
start = cputime;
x = barrier(@qestion_12_18, @con_12_18, x_0);
finish = cputime - start;

fprintf('x* =\n');
fprintf('%f\n', x);
fprintf('f*= %f\n',  qestion_12_18(x));
fprintf('running time = %f\n', finish);

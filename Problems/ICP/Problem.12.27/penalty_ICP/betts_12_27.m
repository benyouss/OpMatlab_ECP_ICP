
clear all;
clc;
x_0 = [2.52; 2; 37.5; 9.25; 6.8];
start = cputime;
x = penalty_ICP(@qestion_12_27, @con_12_27, x_0);
finish = cputime - start;

fprintf('x* =\n');
fprintf('%f\n', x);
fprintf('f*= %f\n',  -qestion_12_27(x)*100);
fprintf('running time = %f\n', finish);

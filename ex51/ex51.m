% 初始矩阵和误差限
A = [5,-4,1;-4,6,-4;1,-4,7];
B = [25,-41,10,-6;-41,68,-17,10;10,-17,5,-3;-6,10,-3,2];
epsilon = 1e-5;

% 幂法进行计算
[x1, lambda1] = power_method(rand(3, 1), A, epsilon);
fprintf('lambda1 = %.6f\n', lambda1);
fprintf('x1 =\n');
disp(x1');

% 幂法进行计算
[x1, lambda1] = power_method(rand(4, 1), B, epsilon);
fprintf('lambda1 = %.6f\n', lambda1);
fprintf('x1 =\n');
disp(x1');




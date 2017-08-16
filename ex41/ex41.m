% 生成10阶Hilbert矩阵
n = 10;
H = hilbert(n);
b = 1 ./ (1: n)';
x = zeros(n, 1);

% 设置误差限和松弛因子，进行Jacobi迭代和SOR迭代
epsilon = 1e-4;
omega = 1.25;
[x1, cnt1] = jacobi(x, H, b, epsilon);
fprintf('JACOBI: cnt = %d\n', cnt1);
disp(x1');
[x2, cnt2] = sor(x, H, b, omega, epsilon);
fprintf('SOR: cnt = %d\n', cnt2);
disp(x2');

% 调整omega，观测迭代过程
for omega = 0.1: 0.1: 1.9
    [x3, cnt3] = sor(x, H, b, omega, epsilon);
    fprintf('SOR: omega = %.1f, cnt = %d\n', omega, cnt3);
    disp(x3');
end

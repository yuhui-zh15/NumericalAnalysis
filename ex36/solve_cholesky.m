% 对Cholesky分解后的矩阵L解线性方程组，输入矩阵L，b，输出求解结果x
function [x] = solve_cholesky(L, b)
n = size(L, 1);
y = zeros(n, 1);
% 回代法解线性方程组
for i = 1: n
    y(i) = b(i);
    for j = 1: i - 1
        y(i) = y(i) - L(i, j) * y(j);
    end
    y(i) = y(i) / L(i, i);
end
x = zeros(n, 1);
for i = n: -1: 1
    x(i) = y(i);
    for j = n: -1: i + 1
        x(i) = x(i) - L(j, i) * x(j);
    end
    x(i) = x(i) / L(i, i);
end

% 最小二乘法拟合曲线，输入向量t、f，拟合函数phi，输出拟合结果x和拟合矩阵A
function [x, A] = least_square(t, f, phi)
m = length(t);
n = length(phi);
A = zeros(m, n);
for i = 1: m
    for j = 1: n
        A(i, j) = phi{j}(t(i));
    end
end
G = A' * A;
b = A' * f;
L = cholesky(G);
x = solve_cholesky(L, b);
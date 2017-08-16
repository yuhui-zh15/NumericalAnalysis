% 对矩阵A进行Cholesky分解，输入矩阵A，输出分解后的矩阵A
function [A] = cholesky(A)
n = size(A, 1);
% 将A提取为下三角矩阵
A = tril(A);
% 执行算法过程
for j = 1: n
    for k = 1: j - 1
        A(j, j) = A(j, j) - A(j, k) ^ 2;
    end
	A(j, j) = sqrt(A(j, j));
	for i = j + 1: n
        for k = 1: j - 1
            A(i, j) = A(i, j) - A(i, k) * A(j, k);
        end
        A(i, j) = A(i, j) / A(j, j);
	end
end
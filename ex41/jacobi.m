% Jacobi迭代法，输入向量x、b，矩阵A，迭代误差限epsilon，输出结果x，迭代次数cnt
function [x, cnt] = jacobi(x, A, b, epsilon)
n = size(x, 1);
y = inf(n, 1);
cnt = 0;
% 当不满足终止条件，进行迭代
while max(abs(y - x)) > epsilon
    y = x;
    for i = 1: n
        x(i) = (b(i) - A(i, :) * y) / A(i, i) + y(i);
    end
    cnt = cnt + 1;
end
% SOR迭代法，输入向量x、b，矩阵A，松弛因子omega，迭代误差限epsilon，输出结果x，迭代次数cnt
function [x, cnt] = sor(x, A, b, omega, epsilon)
n = size(x, 1);
y = inf(n, 1);
cnt = 0;
% 当不满足终止条件，进行迭代
while max(abs(y - x)) > epsilon
    y = x;
    for i = 1: n
        x(i) = (1 - omega) * x(i) + omega * ((b(i) - A(i, :) * x) / A(i, i) + x(i));
    end
    cnt = cnt + 1;
end

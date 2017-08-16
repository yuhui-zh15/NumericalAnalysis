% 幂法求矩阵最大特征值和对应特征向量，输入初始向量v，矩阵A，迭代误差限epsilon，输出最大特征值lambda1和对应特征向量x1
function [x1, lambda1] = power_method(v, A, epsilon)
u = v;
lambda1 = 0;
last_lambda1 = inf;

% 当不满足终止条件，进行迭代
while abs(lambda1 - last_lambda1) > epsilon
    last_lambda1 = lambda1;
    v = A * u;
    % 选取v中绝对值最大元素
    if abs(max(v)) > abs(min(v))
        lambda1 = max(v);
    else
        lambda1 = min(v);
    end
    u = v ./ lambda1;
end
x1 = u;
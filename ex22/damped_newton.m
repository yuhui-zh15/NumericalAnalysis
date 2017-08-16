% 阻尼牛顿法，输入函数f、导数df、迭代初始值x0、阻尼初始值lambda0、迭代误差限epsilon，输出结果x
function [x] = damped_newton(f, df, x0, lambda0, epsilon)
last_x = inf;
x = x0;
k = 0;
% 当不满足终止条件
while (abs(f(x)) > epsilon || abs(x - last_x) > epsilon)
    last_x = x;
    s = f(x) / df(x);
    x = last_x - s;
    lambda = lambda0;
    % 折半更新lambda
    while abs(f(x)) >= abs(f(last_x))
        lambda = lambda / 2;
        x = last_x - lambda * s;
    end
    % 迭代次数加1，打印结果
    k = k + 1;
    fprintf('iteration = %i, lambda = %.4e, x = %.6e\n', k, lambda, x);
end
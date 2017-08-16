% 函数和导函数
f = @(x) x^3-x-1;
df = @(x) 3*x^2-1;
fprintf('function: %s, derivative function: %s\n', func2str(f), func2str(df));
% 阻尼牛顿法
res = damped_newton(f, df, 0.6, 1.0, 1e-3);
fprintf('result x = %.6e\n', res);

% 函数和导函数
f = @(x) -x^3+5*x;
df = @(x) -3*x^2+5;
fprintf('function: %s, derivative function: %s\n', func2str(f), func2str(df));
% 阻尼牛顿法
res = damped_newton(f, df, 1.2, 1.0, 1e-3);
fprintf('result x = %.6e\n', res);

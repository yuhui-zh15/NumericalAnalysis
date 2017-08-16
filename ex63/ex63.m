% 数据集
t = (1: 0.5: 8)';
y = [33.40;79.50;122.65;159.05;189.15;214.15;238.65;252.20;267.55;280.50;296.65;301.65;310.40;318.15;325.15];
hold on

% 最小二乘法拟合函数，画图
phi = {@(z) 1; @(z) z; @(z) z^2};
[x, A] = least_square(t, y, phi);
fprintf('RESULT: y=%.4f+%.4ft+%.4ft^2\nMEAN SQUARE: %.4f\n', x(1), x(2), x(3), std(y - A * x));
plot(t, A * x, 'g')

% 最小二乘法拟合函数，画图
phi = {@(z) 1; @(z) z};
[x, A] = least_square(t, log(y), phi);
fprintf('RESULT: y=%.4fe^%.4ft\nMEAN SQUARE: %.4f\n', exp(x(1)), x(2), std(y - exp(A * x)));
plot(t, exp(A * x), 'r');

plot(t, y, '+');
hold off
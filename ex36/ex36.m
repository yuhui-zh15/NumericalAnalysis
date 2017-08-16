% 生成10阶Hilbert矩阵
n = 10;
H = hilbert(n);
x = ones(n, 1);
b = H * x;

% 使用Cholesky分解法解线性方程组，计算残差和误差
L = cholesky(H);
x_ = solve_cholesky(L, b);
r = b - H * x_;
delta_x = x_ - x;
fprintf('ORIGIN: n = %d, ||r|| = %.4e, ||delta_x|| = %.4e\n', n, max(abs(r)), max(abs(delta_x)));

% 增加扰动项，使用Cholesky分解法解线性方程组，计算残差和误差
b_ = b;
b_ = b_ + ones(n, 1) * 1e-7;
x_ = solve_cholesky(L, b_);
r = b_ - H * x_;
delta_x = x_ - x;
fprintf('INTERFERENCE: n = %d, ||r|| = %.4e, ||delta_x|| = %.4e\n', n, max(abs(r)), max(abs(delta_x)));

% 生成8阶Hilbert矩阵
n = 8;
H = hilbert(n);
x = ones(n, 1);
b = H * x;

% 使用Cholesky分解法解线性方程组，计算残差和误差
L = cholesky(H);
x_ = solve_cholesky(L, b);
r = b - H * x_;
delta_x = x_ - x;
fprintf('ORIGIN: n = %d, ||r|| = %.4e, ||delta_x|| = %.4e\n', n, max(abs(r)), max(abs(delta_x)));

% 增加扰动项，使用Cholesky分解法解线性方程组，计算残差和误差
b_ = b;
b_ = b_ + ones(n, 1) * 1e-7;
x_ = solve_cholesky(L, b_);
r = b_ - H * x_;
delta_x = x_ - x;
fprintf('INTERFERENCE: n = %d, ||r|| = %.4e, ||delta_x|| = %.4e\n', n, max(abs(r)), max(abs(delta_x)));

% 生成12阶Hilbert矩阵
n = 12;
H = hilbert(n);
x = ones(n, 1);
b = H * x;

% 使用Cholesky分解法解线性方程组，计算残差和误差
L = cholesky(H);
x_ = solve_cholesky(L, b);
r = b - H * x_;
delta_x = x_ - x;
fprintf('ORIGIN: n = %d, ||r|| = %.4e, ||delta_x|| = %.4e\n', n, max(abs(r)), max(abs(delta_x)));

% 增加扰动项，使用Cholesky分解法解线性方程组，计算残差和误差
b_ = b;
b_ = b_ + ones(n, 1) * 1e-7;
x_ = solve_cholesky(L, b_);
r = b_ - H * x_;
delta_x = x_ - x;
fprintf('INTERFERENCE: n = %d, ||r|| = %.4e, ||delta_x|| = %.4e\n', n, max(abs(r)), max(abs(delta_x)));

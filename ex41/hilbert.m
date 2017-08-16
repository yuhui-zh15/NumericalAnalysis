% 生成n阶Hilbert矩阵，输入n，输出H
function [H] = hilbert(n)
% 便捷的生成方法
a = repmat(1: n, n, 1);
H = 1 ./ (a + a' - 1);
end
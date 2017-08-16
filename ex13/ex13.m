% nowSum和preSum分别记录当前结果和上一步结果，变量相等时，停止迭代
nowSum1 = single(0);
preSum1 = single(-1);
nowSum2 = double(0);
preSum2 = double(-1);
% realSum记录用双精度浮点数结果
realSum = double(0);
% cnt记录迭代次数n
cnt1 = 0;
cnt2 = 0;

% 当上一步结果与当前结果不相等时，累加1/cnt
while (preSum1 ~= nowSum1)
	preSum1 = nowSum1;
	cnt1 = cnt1 + 1;
	nowSum1 = nowSum1 + single(1.0 / cnt1);
    realSum = realSum + 1.0 / cnt1;
end

fprintf('SINGLE: n = %d, result = %f\n', cnt1, nowSum1);
fprintf('DOUBLE: n = %d, result = %f\n', cnt1, realSum);
fprintf('DELTA = %f\n', nowSum1 - realSum);

% 当上一步结果与当前结果不相等时，累加1/cnt，实际很长时间迭代才会停止
% while (preSum2 ~= nowSum2)
%	preSum2 = nowSum2;
%	cnt2 = cnt2 + 1;
%	nowSum2 = nowSum2 + double(1.0 / cnt2);
% end

%fprintf('DOUBLE: n = %d, result = %f\n', cnt2, nowSum2);
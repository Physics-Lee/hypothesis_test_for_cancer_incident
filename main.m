% p-value = p(get current data and more extreme data|H_0)
%
% Yixuan Li, 2023-11-08
%

clc;clear;close all;
p = @(x) nchoosek(200,x)*(999/1000)^(200-x)*(1/1000)^(x);
p_0 = p(0);
p_1 = p(1);
p_2 = p(2);
p_value = 1 - p_0 - p_1 - p_2;
fprintf("p-value: %.4f\n",p_value);
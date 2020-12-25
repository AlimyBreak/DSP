
clear;
clc;
close all;

load noissin.mat


figure();
subplot(2,1,1);
plot(noissin);
subplot(2,1,2);
% noissin 信号
% 尺度????
% db2 小波类型
% 'plot'
[cA,cD] = dwt(noissin,'db2'); % 系数图

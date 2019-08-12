% 本文件用来验证 低通滤波器的截止频率对信号幅度的影响
% 科曼医疗的面试题
% 2019.08.12

% 1  打扫工作区间
close all;
clear;
clc;

% 2.1  生成原始信号(采样频率为50Hz,频率组成1Hz正弦信号,幅度为10)
A     = 10          ; % 幅度
fs    = 50          ; % 采样频率, Hz
fo    = 1           ; % 原始信号频率,Hz
t_ind = (1:1000)/fs ; % 信号长度为20s

signal_original = A*sin(2*pi*fo*t_ind);

% 2.2  生成滤波器(上限截止频率为1Hz的低通滤波器)
N1  = 8; % 低通滤波器阶数
fc = 1; % 上限截止频率,Hz
wc = fc / (fs/2); %归一化后的上限截止频率
[b1,a1] = butter(N1,wc,'low'); %生成滤波器参数
[b2,a2] = fir1(N1,wc);




% 3  滤波
signal_filtered1 = filter(b1,a1,signal_original);
signal_filtered2 = filter(b2,a2,signal_original);


% 4  画图比较
figure(1);
plot(t_ind,signal_original);
hold on;
plot(t_ind,signal_filtered1);
plot(t_ind,signal_filtered2);
legend({'signal\_original','signal\_filtered1','signal\_filtered2'});
figure(2);
[hh1,w1,s1,~] = freqz(b1,a1,1024,fs);
[hh2,w2,s2,~] = freqz(b2,a2,1024,fs);
plot(w1,abs(hh1));
hold on;
plot(w2,abs(hh2));
legend({'IIR-butter','FIR'});


% 5  结论(是否有理论支撑，是否与理论相符) todo

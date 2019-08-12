% ���ļ�������֤ ��ͨ�˲����Ľ�ֹƵ�ʶ��źŷ��ȵ�Ӱ��
% ����ҽ�Ƶ�������
% 2019.08.12

% 1  ��ɨ��������
close all;
clear;
clc;

% 2.1  ����ԭʼ�ź�(����Ƶ��Ϊ50Hz,Ƶ�����1Hz�����ź�,����Ϊ10)
A     = 10          ; % ����
fs    = 50          ; % ����Ƶ��, Hz
fo    = 1           ; % ԭʼ�ź�Ƶ��,Hz
t_ind = (1:1000)/fs ; % �źų���Ϊ20s

signal_original = A*sin(2*pi*fo*t_ind);

% 2.2  �����˲���(���޽�ֹƵ��Ϊ1Hz�ĵ�ͨ�˲���)
N1  = 8; % ��ͨ�˲�������
fc = 1; % ���޽�ֹƵ��,Hz
wc = fc / (fs/2); %��һ��������޽�ֹƵ��
[b1,a1] = butter(N1,wc,'low'); %�����˲�������
[b2,a2] = fir1(N1,wc);




% 3  �˲�
signal_filtered1 = filter(b1,a1,signal_original);
signal_filtered2 = filter(b2,a2,signal_original);


% 4  ��ͼ�Ƚ�
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


% 5  ����(�Ƿ�������֧�ţ��Ƿ����������) todo

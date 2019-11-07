# -*- coding: utf-8 -*-
"""
Spyder Editor

该程序是使用python3.x版本及其科学运算库进行数字信号处理(滤波和谱分析)的实例.
Author: AlimyBreak
Time:   2019.11.07

Ref：
https://blog.csdn.net/qq7835144/article/details/88838537
https://segmentfault.com/a/1190000005144275

"""

import matplotlib.pyplot  as plt
import scipy as sci
import numpy as np



plt.rcParams['font.sans-serif']=['SimHei'] #用来正常显示中文标签
plt.rcParams['axes.unicode_minus']=False #用来正常显示负号


fs = 200; #采样频率
f1 = 10;  #信号分量1频率
f2 = 20;  #信号分量2频率
f3 = 30;  #信号分量3频率
f4 = 40;  #信号分量1频率
n  = np.arange(100)/fs; #采样点

# 生成信号
yn = [20*np.sin(2*np.pi*f1*i) + 10*np.sin(2*np.pi*f2*i) + 5*np.sin(2*np.pi*f3*i) + 20*np.sin(2*np.pi*f4*i) for i in n];



# fft分析原始信号
fft_result_abs1 = np.abs(sci.fft(yn))*2/len(n);
f_idx = np.arange(len(n))*fs/len(n);

# 滤波器设计和滤波
(b,a) = sci.signal.butter(N=5,Wn=(15),btype='lowpass',output='ba',fs=200); #生成低通滤波器参数
#print(b)
#print(a)
yn_filtered = sci.signal.filtfilt(b,a,yn); #滤波器
# fft分析滤波后的信号
fft_result_abs2 = np.abs(sci.fft(yn_filtered))*2/len(n);



# 画图
plt.close('all');
plt.figure();
plt.subplot(2,2,1);
plt.plot(n,yn);
plt.title(U'原始时域信号');
plt.subplot(2,2,2);
plt.plot(f_idx[range(int(len(n)/2))],fft_result_abs1[range(int(len(n)/2))]);
plt.title(U'原始信号频域分析');

plt.subplot(2,2,3);
plt.plot(n,yn_filtered);
plt.title(U'低通滤波后时域信号');


plt.subplot(2,2,4);
plt.plot(f_idx[range(int(len(n)/2))],fft_result_abs2[range(int(len(n)/2))]);
plt.title(U'低通滤波信号频域分析');


plt.figure();
(w,h) = sci.signal.freqs(b,a);
#plt.plot(w, 20 * np.log10(abs(h))) 	#绘制幅频响应，频率轴取对数，幅度轴转换成dB。

plt.plot(w, abs(h)) 
# -*- coding: utf-8 -*-
"""
Created on Tue Aug 27 16:18:28 2019

@author: Administrator
"""

import numpy as np
import matplotlib.pyplot as plt


n = np.linspace(0,99,100); #定义序号
omega = 1;
K1 = 1;
K2 = 10;
K3 = 100;
#生成 输入序列
xn1 = np.sin(omega*n) + K1;
xn2 = np.sin(omega*n) + K2;
xn3 = np.sin(omega*n) + K3;

# 生成输出序列
yn1 = xn1*0;
for each in range(0,100):
    if each == 0:
        #yn1[each] = xn1[each]**2; #边界不处理
        pass;
    else:
        yn1[each] = xn1[each]**2 - xn1[each]*xn1[each-1];
        
yn2 = xn2*0;
for each in range(0,100):
    if each == 0:
        #yn2[each] = xn2[each]**2;  #边界不处理
        pass;
    else:
        yn2[each] = xn2[each]**2 - xn2[each]*xn2[each-1];        
        
yn3 = xn3*0;
for each in range(0,100):
    if each == 0:
        #yn3[each] = xn3[each]**2;  #边界不处理
        pass;
    else:
        yn3[each] = xn3[each]**2 - xn3[each]*xn3[each-1];        
        
plt.subplot(4,1,1);
plt.plot(n,xn1);
plt.plot(n,yn1);
plt.legend(['x_n1','y_n1']);
plt.text(2,-1,'K=1');

plt.subplot(4,1,2);
plt.plot(n,xn2);
plt.plot(n,yn2);
plt.legend(['x_n2','y_n2']);
plt.text(2,0,'K=10');


plt.subplot(4,1,3);
plt.plot(n,xn3);
plt.plot(n,yn3);
plt.legend(['x_n3','y_n3']);
plt.text(2,0,'K=100');

plt.subplot(4,1,4);
plt.plot(n,yn1);
plt.plot(n,yn2);
plt.plot(n,yn3);
plt.legend(['y_n1','y_n2','y_n3']);

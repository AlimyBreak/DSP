% 傅里叶变换求解微分方程
close all;
clear;
clc;

syms x w

f = -1/(w^2 + 1)/(6-5*w^2);
f_x = ifourier(f,x)
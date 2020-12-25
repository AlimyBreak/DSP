% 连续时间小波变换
close all;
clear;
clc;

x = linspace(-10,10,100000);
% 小波基1:墨西哥草帽

y1 = 2/3^0.5.*pi^(-0.25).*(1-x.^2).*exp(-x.^2/2);

figure(1);
subplot(4,1,1);
plot(x,y1);
hold on ;
plot(get(gca,'Xlim'),[0,0]);
ylabel('y\_real');
text(-8,0.7,'Mexican\_hat');
subplot(4,1,2);

omega_0 = 4*pi/4;
y2 = exp(-x.^2/2).*exp(1i.*omega_0.*x);
y2_real = real(y2);
y2_img = imag(y2);

yyaxis left;
plot(x,y2_real);
ylabel('y\_real');
yyaxis right;
plot(x,y2_img);
ylabel('y\_imag');
text(-8,0.7,'Morlet \omega_0 = \pi');


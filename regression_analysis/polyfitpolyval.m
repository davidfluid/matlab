clear; clc; close all;
x = [10; 20; 30; 40; 50; 60];
y = [35; 37; 38; 39; 41; 43];
n = 2;
plot(x,y,'b.')

xlabel('x');
ylabel('y');

B = polyfit(x,y,n);
hold on;
xplot = linspace(min(x),max(x),1000);
yplot = polyval(B,xplot);

plot(xplot,yplot);
legend('Measured','Model')

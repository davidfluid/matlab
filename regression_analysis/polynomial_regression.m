clear; clc; close all;
x = [10; 20; 30; 40; 50; 60];
y = [35; 37; 38; 39; 41; 43];

plot(x,y,'b.')
xlabel('x');
ylabel('y');

X = [ones(length(x),1) x x.^2];
[B,~,~,~,STATS] = regress(y,X);

hold on
xplot = linspace(min(x), max(x), 1000);
yplot = B(1) + B(2).*xplot + B(3).*xplot.^2;

plot(xplot,yplot)
legend('Measured','Model')
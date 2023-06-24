clear; clc; close all

x = [52; 47; 66; 70; 59; 73; 69];
y = [13; 9; 17; 20; 15; 21; 20];
plot(x,y,'b.');
xlabel('x');
ylabel('y');
X = [ones(length(x),1) x]

[B,~,~,~,STATS] = regress(y,X);

hold on

xplot = [min(x), max(x)]
yplot = B(1) + B(2)*xplot;

plot(xplot,yplot,'r');
legend('Measured','Model')
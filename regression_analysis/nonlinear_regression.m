clear; clc; close all

x = [0.25 0.75 1.25 1.75 2.25];
y = [0.28 0.57 0.68 0.74 0.79];

a = [1 1];
fun = @prob;

plot(x,y,'b.');
xlabel('x');
ylabel('y');

BETA = nlinfit(x,y,fun,a);
hold on;

xplot = linspace(min(x),max(x),1000);
yplot = fun(BETA,xplot);

plot(xplot,yplot,'r');
xlabel('x'); ylabel('y');
legend('Measured','Model');
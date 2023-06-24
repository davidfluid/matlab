clear; clc; close all;

x1 = [0.3; 0.6; 0.9; 0.3; 0.6; 0.9; 0.3; 0.6; 0.9];
x2 = [0.001; 0.001; 0.001; 0.01; 0.01; 0.01; 0.05; 0.05; 0.05];
y = [0.04; 0.24; 0.69; 0.13; 0.82; 2.38; 0.31; 1.95; 5.66];

Y = log(y);
X1 = log(x1);
X2 = log(x2);

X = [ones(length(x1),1) [X1 X2]];
[B,~,~,~,STATS] = regress(Y,X);

alpha = exp(B(1));
beta = B(2);
gamma = B(3);
ymodel = alpha*x1.^beta.^x2.^gamma;
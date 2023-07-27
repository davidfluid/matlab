clear; clc; close all;
%% Edit these values alone
%%%%%%%%%%%%%%%% Aircraft parameters based on aircraft design project I
w0  = 1110;  %%% Aircraft weight [kg]
span  = 11; %%%% Span of the aircraft [m]
cl = 0.3; %%%%%% Lift force coefficient [no unit]
cbase = 1.63; %%%%%%%% chord length at the base of the aircraft [m]  
ctip = 1.12; %%%%%%% chord length at the tip of the aircraft [m]
velo = 62.78; %%%%%% Cruise velocity of the aircraft [m/s]
%%
lbase = 0.5*1.226*velo^2*cbase*cl;
ltip = 0.5*1.226*velo^2*ctip*cl;

slope = (ltip-lbase)/(span);
const = lbase/2;
iii_term_const = (w0*9.81*4/(3.14*span^2));
%%
y = linspace(0,span/2,200);
l = slope.*y + const + iii_term_const * sqrt((span/2)^2-y.^2);
plot(y,l,'-.k');
hold on;
plot(y, (slope*2).*y +lbase);
lbase_ellipse = w0*9.81*4/(3.14*span);
plot(y, lbase_ellipse*sqrt(1-(y/(span/2)).^2),'*-r');
xlabel('y [m]');
ylabel('L(y) [N/m]');
legend('Schrenks plot','Linear distribution','Elliptical distribution');
%% Plot of shear force

shearforce = -trapz(y,l) + ((slope*(y.^2)/2)+(const.*y))+iii_term_const.*(((y./2).*sqrt((span/2)^2-y.^2))+(0.5*(asin(2.*y/span)*(span/2)^2)));

figure;
plot(y,shearforce,'pk-');
xlabel('y [m]');
ylabel('V(y) [N]');

%% Plot of bending moment

for i = 2:length(l)
    clear ymat lmat
    ymat = y(1:i);
    lmat = l(1:i);
wnetaa2(i-1) = trapz(ymat,lmat);
ybar(i-1) = (1./trapz(ymat,lmat)) .*trapz(ymat,ymat.*lmat);
end

for i = 2:length(l)
bm(i-1) = (wnetaa2(end).*ybar(end)) - (wnetaa2(end).*y(i-1)) + wnetaa2(i-1)*(y(i-1)-ybar(i-1));
end

figure;
plot(y(2:length(l)),bm,'pk-');
xlabel('y [m]');
ylabel('M(y) [Nm]');

%%
for i = 2:length(l)-1
slope_sf(i-1) = (shearforce(i)-shearforce(i-1))/(y(i)-y(i-1));
slope_bm(i-1) = (bm(i)-bm(i-1))/(y(i)-y(i-1));
end

%%
% figure;
% plot(y,l,'*-'); hold on;
% plot(y(1:end-2),slope_sf);
% figure;
% plot(y,shearforce,'*-');
% hold on;
% plot(y(1:end-2),slope_bm);
%%
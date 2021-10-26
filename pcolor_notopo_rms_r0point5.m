clear;
close all;
%%
% clear data data_cell tank_rot_1d time_1d radial_index exp 
% dir  = 'F:/PhD/Analysing_11KUROSHIOMANI/FIGS/Eastward_Jet/NoTopography_TankRampup_TankRampdown/EXP138/pcolor/ur_theta_omegat_rpoint5/';
% cd(dir);
% load pcolor_ur_theta_omegat.mat;
% 
% mid1 = find(round(tank_rot_1d*1000)/1000 == round(0.455*1000)/1000);
% mid2 = find(round(tank_rot_1d*1000)/1000 == round(0.555*1000)/1000);
% 
% ss1 = find(abs(time_1d - time_1d(mid1(1)))<500);
% ss2 = find(abs(time_1d - time_1d(mid2(1)))<500);
% 
% azi = transpose(data.coord_y);
figure1 = figure;
% 
% for i= 1:length(tank_rot_1d)
%    
%     min_data_cell(i) = min(data_cell{1,1}(i,:));
%     max_data_cell(i) = max(data_cell{1,1}(i,:));
%     
% end
% 
% lower = min(min_data_cell);
% upper = max(max_data_cell);
% 
% [AZI,TANK_ROT] = meshgrid(azi,tank_rot_1d);
% 
% axes1 = axes('Parent',figure1,...
%     'Position',[-0.055 0.37 0.5 0.5],'TickDir','in',...
%     'LineWidth',1,...
%     'PlotBoxAspectRatio',[0.35 1 1],...
%     'FontSize',12,...
%     'FontName','Times');
% 
% xlim(axes1,[round((data.coord_y(3))*100)/100 round(max(data.coord_y)*100)/100]);
% set(gca, 'xtick', [round((data.coord_y(3))*100)/100, round(((max(data.coord_y)+(data.coord_y(3)))/2)*100)/100, round(max(data.coord_y)*100)/100]);
% set(gca,'XTickLabel',num2str(get(gca,'XTick').'));
% set(gca, 'Fontname', 'Times');
% set(gca, 'Fontsize', 12)
% set(gca,'TickDir','out');
% 
% ylim(axes1,round([0.4108 0.6100]*1000)/1000);
% box(axes1,'on');
% hold(axes1,'all');
% set(gca, 'ytick', round(linspace(0.4108,0.6100,4)*1000)/1000);
% set(gca,'YTickLabel',num2str(get(gca,'YTick').'));
% 
% annotation(figure1,'textbox',...
%     [0.1 0.85 0.1 0.1],...
%     'String',{'(a)'},...
%     'FontSize',14,...
%     'FontName','Times','Interpreter','latex',...
%     'FitBoxToText','on',...
%     'LineStyle','none');
% 
% pcolor(AZI,TANK_ROT,data_cell{1,1});
% xlabel('$\theta (rad)$','Interpreter','latex');
% shading flat;
% colormap(jet);
% caxis([lower upper]);
% 
% line1x=linspace(round((data.coord_y(3))*100)/100,round(max(data.coord_y)*100)/100,100);
% line1y=round(linspace(tank_rot_1d(ss1(1)),tank_rot_1d(ss1(1)),100)*1000)/1000;
% hold on;
% line(line1x,line1y,'color','k','LineWidth',1.25);
% 
% line1x=linspace(round((data.coord_y(3))*100)/100,round(max(data.coord_y)*100)/100,100);
% line1y=round(linspace(tank_rot_1d(ss2(1)),tank_rot_1d(ss2(1)),100)*1000)/1000;
% hold on;
% line(line1x,line1y,'color','k','LineWidth',1.25);
% 
% annotation(figure1,'arrow','Position',[0.0725 0.5625 0 0.1]);
% annotation(figure1,'arrow','Position',[0.32 0.675 0 -0.1]);
annotation(figure1,'arrow','Position',[0.5225 0.57 0 0.1]);
annotation(figure1,'arrow','Position',[0.725 0.675 0 -0.1]);
% 
% %%
% clear data data_cell tank_rot_1d time_1d radial_index exp mid1 ss1 mid2 ss2
% dir  = 'F:/PhD/Analysing_11KUROSHIOMANI/FIGS/Eastward_Jet/NoTopography_TankRampup_TankRampdown/EXP139/pcolor/ur_theta_omegat_rpoint5/';
% cd(dir);
% load pcolor_ur_theta_omegat.mat;
% azi = transpose(data.coord_y);
% 
% mid1 = find(round(tank_rot_1d*1000)/1000 == round(0.455*1000)/1000);
% mid2 = find(round(tank_rot_1d*1000)/1000 == round(0.555*1000)/1000);
% 
% ss1 = find(abs(time_1d - time_1d(mid1(end)))<500);
% ss2 = find(abs(time_1d - time_1d(mid2(end)))<500);
% 
% [AZI,TANK_ROT] = meshgrid(azi,tank_rot_1d);
% 
% 
% axes2 = axes('Parent',figure1,...
%     'Position',[0.15 0.37 0.5 0.5],...
%     'TickDir','in',...
%     'LineWidth',1,...
%     'PlotBoxAspectRatio',[0.35 1 1],...
%     'FontSize',12,...
%     'FontName','Times');
% 
% xlim(axes2,[round((data.coord_y(3))*100)/100 round(max(data.coord_y)*100)/100]);
% xlabel('$\theta (rad)$','Interpreter','latex');
% set(gca, 'xtick', [round((data.coord_y(3))*100)/100, round(((max(data.coord_y)+(data.coord_y(3)))/2)*100)/100, round(max(data.coord_y)*100)/100]);
% set(gca,'XTickLabel',num2str(get(gca,'XTick').'));
% set(gca, 'Fontname', 'Times');
% set(gca, 'Fontsize', 12)
% set(gca,'TickDir','out');
% 
% % ylabel('$\Omega_t (rad/s)$','Interpreter','latex');
% ylim(axes2,round([0.4108 0.6100]*1000)/1000);
% box(axes2,'on');
% hold(axes2,'all');
% set(gca, 'ytick', round(linspace(0.4108,0.6100,4)*1000)/1000);
% set(gca,'YTickLabel',num2str(get(gca,'YTick').'));
% 
% annotation(figure1,'textbox',...
%     [0.3 0.85 0.1 0.1],...
%     'String',{'(b)'},...
%     'FontSize',14,...
%     'FontName','Times','Interpreter','latex',...
%     'FitBoxToText','on',...
%     'LineStyle','none');
% 
% pcolor(AZI,TANK_ROT,data_cell{1,1});
% shading flat;
% colormap(jet);
% caxis([lower upper]);
% 
% h=colorbar('SouthOutside');
%     set(h, 'Position', [0.1275 0.225 0.25 .025], 'YTick',linspace(round(lower*100)/100,round(upper*100)/100,4));
%     
%         annotation(figure1,'textbox',...
%     [0.38 0.1625 0.1 0.1],...
%     'String',{'$u_r$(m/s)'},...
%     'FontSize',14,...
%     'FontName','Times','Interpreter','latex',...
%     'FitBoxToText','on',...
%     'LineStyle','none');
% 
% line1x=linspace(round((data.coord_y(3))*100)/100,round(max(data.coord_y)*100)/100,100);
% line1y=round(linspace(tank_rot_1d(ss1(end)),tank_rot_1d(ss1(end)),100)*1000)/1000;
% hold on;
% line(line1x,line1y,'color','k','LineWidth',1.25);
% 
% line1x=linspace(round((data.coord_y(3))*100)/100,round(max(data.coord_y)*100)/100,100);
% line1y=round(linspace(tank_rot_1d(ss2(end)),tank_rot_1d(ss2(end)),100)*1000)/1000;
% hold on;
% line(line1x,line1y,'color','k','LineWidth',1.25);

%%
clear data data_cell tank_rot_1d time_1d radial_index exp lower upper
dir  = 'F:/PhD/Analysing_11KUROSHIOMANI/FIGS/Eastward_Jet/NoTopography_TankRampup_TankRampdown/EXP138/pcolor/rms_theta_omegat_r0point/';
cd(dir);
load EXP138_pcolor_ur_rms_theta_time_r0point.mat;

thresh2index = find(round(tank_rot*1000)/1000 == round(0.5304*1000)/1000);
thresh1index = find(round(tank_rot*1000)/1000 == round(0.4667*1000)/1000);
             
mid_tank_rot1 = (tank_rot(1)+tank_rot(thresh1index(1)))/2;
mid_tank_rot2 = (tank_rot(thresh1index(1))+tank_rot(thresh2index(1)))/2;
mid_tank_rot3 = (tank_rot(thresh2index(1))+tank_rot(end))/2;

ss1 = find(round(tank_rot*10000)/10000 == round(mid_tank_rot1*10000)/10000);
ss2 = find(round(tank_rot*10000)/10000 == round(mid_tank_rot2*10000)/10000);
ss3 = find(round(tank_rot*10000)/10000 == round(mid_tank_rot3*10000)/10000);

azi = transpose(theta_1d);
[AZI,TANK_ROT] = meshgrid(azi,tank_rot);

for i= 1:length(tank_rot)
   
    min_rms_time_series(i) = min(rms_time_series(i,:));
    max_rms_time_series(i) = max(rms_time_series(i,:));
    
end

lower = min(min_rms_time_series);
upper = max(max_rms_time_series);



axes3 = axes('Parent',figure1,...
    'Position',[0.355 0.37 0.5 0.5],...
    'TickDir','in',...
    'LineWidth',1,...
    'PlotBoxAspectRatio',[0.35 1 1],...
    'FontSize',12,...
    'FontName','Times');

xlim(axes3,[round((theta_1d(3))*100)/100 round(max(theta_1d)*100)/100]);
set(gca, 'xtick', [round((theta_1d(3))*100)/100, round(((max(theta_1d)+(theta_1d(3)))/2)*100)/100, round(max(theta_1d)*100)/100]);
set(gca,'XTickLabel',num2str(get(gca,'XTick').'));
set(gca, 'Fontname', 'Times');
set(gca, 'Fontsize', 12);
xlabel('$\theta (rad)$','Interpreter','latex');
set(gca,'TickDir','out');

ylabel('$\Omega_t (rad/s)$','Interpreter','latex');
ylim(axes3,round([0.4108 0.6100]*1000)/1000);
box(axes3,'on');
hold(axes3,'all');
set(gca, 'ytick', round(linspace(0.4108,0.6100,4)*1000)/1000);
set(gca,'YTickLabel',num2str(get(gca,'YTick').'));

annotation(figure1,'textbox',...
    [0.5 0.85 0.1 0.1],...
    'String',{'(a)'},...
    'FontSize',14,...
    'FontName','Times','Interpreter','latex',...
    'FitBoxToText','on',...
    'LineStyle','none');

      pcolor(AZI,TANK_ROT,rms_time_series);
shading flat;
colormap(jet);
caxis([lower upper]);

line1x=linspace(round((theta_1d(1))*100)/100,round(max(theta_1d)*100)/100,100);
line1y=round(linspace(tank_rot(ss1(1)),tank_rot(ss1(1)),100)*1000)/1000;
hold on;
line(line1x,line1y,'color','k','LineWidth',1.25);

line1x=linspace(round((theta_1d(1))*100)/100,round(max(theta_1d)*100)/100,100);
line1y=round(linspace(tank_rot(ss2(1)),tank_rot(ss2(1)),100)*1000)/1000;
hold on;
line(line1x,line1y,'color','k','LineWidth',1.25);

line1x=linspace(round((theta_1d(1))*100)/100,round(max(theta_1d)*100)/100,100);
line1y=round(linspace(tank_rot(ss3(1)),tank_rot(ss3(1)),100)*1000)/1000;
hold on;
plot(line1x,line1y,'color','k','LineWidth',1.25);

%%%%%%%%% axes 3 
%%
clear theta_1d azi AZI TANK_ROT tank_rot rms_time_series 
dir  = 'F:/PhD/Analysing_11KUROSHIOMANI/FIGS/Eastward_Jet/NoTopography_TankRampup_TankRampdown/EXP139/pcolor/rms_theta_omegat_r0point/';
cd(dir);
load EXP139_pcolor_ur_rms_theta_time_r0point.mat;

azi = transpose(theta_1d);
[AZI,TANK_ROT] = meshgrid(azi,tank_rot);


axes4 = axes('Parent',figure1,...
    'Position',[0.56 0.37 0.5 0.5],...
    'TickDir','in',...
    'LineWidth',1,...
    'PlotBoxAspectRatio',[0.35 1 1],...
    'FontSize',12,...
    'FontName','Times');

xlim(axes4,[round((theta_1d(3))*100)/100 round(max(theta_1d)*100)/100]);
set(gca, 'xtick', [round((theta_1d(3))*100)/100, round(((max(theta_1d)+(theta_1d(3)))/2)*100)/100, round(max(theta_1d)*100)/100]);
set(gca,'XTickLabel',num2str(get(gca,'XTick').'));
set(gca, 'Fontname', 'Times');
set(gca, 'Fontsize', 12);
xlabel('$\theta (rad)$','Interpreter','latex');
set(gca,'TickDir','out');

% ylabel('$\Omega_t (rad/s)$','Interpreter','latex');
ylim(axes4,round([0.4108 0.6100]*1000)/1000);
box(axes4,'on');
hold(axes4,'all');
set(gca, 'ytick', round(linspace(0.4108,0.6100,4)*1000)/1000);
set(gca,'YTickLabel',num2str(get(gca,'YTick').'));

annotation(figure1,'textbox',...
    [0.7 0.85 0.1 0.1],...
    'String',{'(b)'},...
    'FontSize',14,...
    'FontName','Times','Interpreter','latex',...
    'FitBoxToText','on',...
    'LineStyle','none');


      pcolor(AZI,TANK_ROT,rms_time_series);
shading flat;
colormap(jet);
% colorder = get(gca,'ColorOrder')
k=colorbar('SouthOutside');
set(k, 'Position', [0.54 0.225 0.25 .025], 'YTick',linspace(round(lower*100)/100,round(upper*100)/100,4));
    
    annotation(figure1,'textbox',...
    [0.79 0.158 0.1 0.1],...
    'String',{'$u\prime_{r,rms}(m/s)$'},...
    'FontSize',14,...
    'FontName','Times','Interpreter','latex',...
    'FitBoxToText','on',...
    'LineStyle','none');



%%
dir  = 'F:/PhD/Analysing_11KUROSHIOMANI/FIGS/Eastward_Jet/PRF_Figs/pcolor_notopo_ur/';
cd(dir);
print('-djpeg', '-r400', 'rms_hovmoller_notopo.jpeg');
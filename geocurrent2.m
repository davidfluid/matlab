clc;clear; close all;
 
%%
cd D:\computations_dir\LCS\geostrophic_current;
FILENAME = 'kuroshio_oneyear_may24_2022_2023.nc';
finfo    = ncinfo(FILENAME);
latitude = ncread(FILENAME,'latitude');
longitude = ncread(FILENAME,'longitude');
time = ncread(FILENAME,'time');
zos = ncread(FILENAME,'zos');

%%
writer = VideoWriter('kuroshio_oneyear.avi');
writer.open;

% Set problem
g=9.8; % gravity constant
R=6400000; % Earth radius
omega=2*pi/(24*60*60); % Earth rotation angle velocity

for k = 1:30%length(time)
eta=zos(:,:,k); % Sea surface height in each point
 
% Set grid
x=longitude; % longitude 
y=latitude;       % latitude
[x1 y1]=meshgrid(x,y);
x1=x1';y1=y1';
 
% Set Coriolis force coefficients
f=2*omega*sind(y1);
 
% Visualization of sea surface height
pcolor(x1,y1,eta); colorbar;
shading flat

hold on
%
title('Calculated geostrophic current based on SSH','fontweight','bold')
xlabel('longitude','fontweight','bold')
ylabel('latitude','fontweight','bold')
set(gcf,'color','w')


u=zeros(size(eta));
v=zeros(size(eta));
 
% Calculate geostrophic current using numerical method

for j=2:size(x1,2)-1

    for i=2:size(y1,1)-1
        dx=(x1(i+1,j)-x1(i-1,j))*(R*cosd(y1(i,j))*pi/180);
        dy=(y1(i,j+1)-y1(i,j-1))*(R*pi/180);
        u(i,j,k)=-g/f(i,j)*(eta(i,j+1)-eta(i,j-1))/dy;
        v(i,j,k)=g/f(i,j)*(eta(i+1,j)-eta(i-1,j))/dx;
    end
end

% Geostrophic current visualization


quiver(x1,y1,u(:,:,k),v(:,:,k),3,'k')
   frame = getframe(gcf);
   writeVideo(writer,frame);
time_var(k) = (time(k)-time(1))/24;
end
close(writer);
%%
cd D:\computations_dir\LCS\TBarrier-main\TBarrier\2D\data\geostrophic_current;
save('kuroshio_1month.mat', 'longitude', 'latitude', 'u', 'v', 'time_var');

%annotation('textbox',dim,'String',str,'FitBoxToText','on');

% print(gcf,'kuroshio1','-dpng')

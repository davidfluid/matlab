%% Import data from text file.
% Script for importing data from the following text file:
%
%    D:\computations_dir\oscillating_cylinder\stationary_cylinder_11feb2023\aratio0_fratio1\postProcessing\forceCoeffs_object\0\coefficient.dat
%
% To extend the code to different selected data or a different text file,
% generate a function instead of a script.

% Auto-generated by MATLAB on 2023/02/11 14:37:06

%% Initialize variables.
clear; clc; close all;
filename = ['D:\computations_dir\cavitating_hydrofoil\validation_dir\cavitation_no_cl_re\aoi12_v38\postProcessing\forceCoeffs_object\0\coefficient.dat'];
delimiter = '\t';
startRow = 14;

%% Format string for each line of text:
%   column1: text (%s)
%	column2: text (%s)
%   column3: text (%s)
%	column4: text (%s)
%   column5: text (%s)
%	column6: text (%s)
%   column7: text (%s)
%	column8: text (%s)
%   column9: text (%s)
%	column10: text (%s)
%   column11: text (%s)
%	column12: text (%s)
%   column13: text (%s)
% For more information, see the TEXTSCAN documentation.
formatSpec = '%s%s%s%s%s%s%s%s%s%s%s%s%s%[^\n\r]';

%% Open the text file.
fileID = fopen(filename,'r');

%% Read columns of data according to format string.
% This call is based on the structure of the file used to generate this
% code. If an error occurs for a different file, try regenerating the code
% from the Import Tool.
dataArray = textscan(fileID, formatSpec, 'Delimiter', delimiter, 'HeaderLines' ,startRow-1, 'ReturnOnError', false);

%% Close the text file.
fclose(fileID);

%% Post processing for unimportable data.
% No unimportable data rules were applied during the import, so no post
% processing code is included. To generate code which works for
% unimportable data, select unimportable cells in a file and regenerate the
% script.

%% Allocate imported array to column variable names
VarName1 = dataArray{:, 1};
VarName2 = dataArray{:, 2};
VarName3 = dataArray{:, 3};
VarName4 = dataArray{:, 4};
VarName5 = dataArray{:, 5};
VarName6 = dataArray{:, 6};
VarName7 = dataArray{:, 7};
VarName8 = dataArray{:, 8};
VarName9 = dataArray{:, 9};
VarName10 = dataArray{:, 10};
VarName11 = dataArray{:, 11};
VarName12 = dataArray{:, 12};
VarName13 = dataArray{:, 13};

length_time = length(VarName1);


for i = 1:length_time
    
t(i) = str2num(transpose(VarName1{i,1}(:)));
cd(i) = str2num(transpose(VarName2{i,1}(:)));
cl(i) = str2num(transpose(VarName4{i,1}(:)));

end

plot(t(400:end),cl(400:end));
mean(cl(400:end))
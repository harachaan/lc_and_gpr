% 姿勢，軌道を状態変数(変数７個？)に持つGPR
clc
clear
close all
dir = pwd;
addpath(strcat(dir, '/simple_plate'))

% kernel parameters
tau = log(1);
sigma = log(1);
eta = log(1);
params = [tau sigma eta];

% 学習データ読み込み
% (平板のモデルに対して，とりあえず乱数を足して作った１１個のデータ)
sample = readmatrix('simple_plate_0.csv', NumHeaderLines=1);
data = zeros(length(sample(:,1)), length(sample(1, :)), 11); % 事前割り当て
for i = 0:1:10
    filename = strcat('simple_plate_', num2str(i), '.csv');
    data(:,:,i+1) = readmatrix(filename, NumHeaderLines=1);
end
t = data(:,1,:); 
q0 = data(:,2,:); q1 = data(:,3,:); q2 = data(:,4,:); q3 = data(:,5,:);
x_cowell = data(:,6,:); y_cowell = data(:,7,:); z_cowell = data(:,8,:);

% 確め計算ゾーン ------------------------------------------------------------

% -------------------------------------------------------------------------

% カーネル行列のハイパーパラメータ推定
% params = optimize1(params, xtrain, ytrain);

% 回帰の計算


% plot
f1 = figure; % f2 = figure;

figure(f1);
for i = 1:1:length(t(1,1,:))
    plot(t(:,:,i), q0(:,:,i), 'ko');
    hold on;
end


% -------------------------------------------------------------------------
% 図をプロットする関数を作ろうとしたけどよくわからん買った．
% function fig = plot_drawline(f_num, xtrain, ytrain, xx, y)
%     fig = figure;
%     figure(f_num); 
% end




















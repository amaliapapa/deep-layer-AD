
fig = figure;
set(groot,'defaultAxesFontName', 'Arial');
set(groot,'defaultAxesFontSize', 12);
set(groot,'defaultAxesTickDir','out');
set(groot,'defaultAxesTickDirMode','manual');
set(groot,'defaultFigureColor','w');
set(groot,'defaultAxesTitleFontWeight','normal');
set(groot,'defaultAxesTickLength',[0.02 0.02]);


T_A = readtable('Figure 3.xlsx','Sheet','3D');
subplot(3,3,1)
boxplot_2groups_2depths(T_A, T_A.SpikeRate, 5, 1);
ylim([0 4])
ylabel('Spikes/s (sqrt)')
title('Awake Rest / Small Pupil')
xticklabels({'L2/3','L5/6'})
%lgd = legend('WT','APP/PS1','Location','southeast');

T_B = readtable('Figure 3.xlsx','Sheet','3E');
subplot(3,3,2)
boxplot_2groups_2depths(T_B, T_B.SpikeRate, 5, 1);
ylim([0 5])
title('Running')
xticklabels({'L2/3','L5/6'})
lgd = legend('WT','APP/PS1','Location','southeast');

T_C = readtable('Figure S4.xlsx','Sheet','S4C');

% Sup layers
app_sup_female = strcmp(T_C.Sex, 'F') & strcmp(T_C.Area,'crtx_sup');
app_sup_male = strcmp(T_C.Sex, 'M') & strcmp(T_C.Area,'crtx_sup');

% Deep layers
app_deep_female = strcmp(T_C.Sex, 'F') & strcmp(T_C.Area,'crtx_deep');
app_deep_male = strcmp(T_C.Sex, 'M') & strcmp(T_C.Area,'crtx_deep');

subplot(3,3,3); 
violinplot([T_C.SpikeRate(app_sup_female); T_C.SpikeRate(app_sup_male); T_C.SpikeRate(app_deep_female); T_C.SpikeRate(app_deep_male)], [ones(length(find((app_sup_female)==1)),1); 2*ones(length(find((app_sup_male)==1)),1); 3*ones(length(find((app_deep_female)==1)),1); 4*ones(length(find((app_deep_male)==1)),1)], 'MarkerSize', 12, 'ViolinColor', [0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248; 0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248]);
ylabel('Spikes/s (sqrt)');
xticklabels({'Female', 'Male', 'Female', 'Male'});
box off
ylim([0 6])
ylabel('Spikes/s (sqrt)');
offsetAxes(gca);

set(fig, 'Renderer', 'painters');


T_D = readtable('Figure 5.xlsx','Sheet','5A');
subplot(3,3,4)
boxplot_2groups_2depths(T_D, T_D.SpikeRate, 5, 1);
ylim([0 3])
ylabel('Spikes/s (sqrt)');
xticklabels({'L2/3','L5/6'})
title('Awake Rest / Small Pupil')

T_E = readtable('Figure 5.xlsx','Sheet','5B');
subplot(3,3,5)
boxplot_2groups_2depths(T_E, T_E.SpikeRate, 5, 1);
ylim([0 3])
ylabel('Spikes/s (sqrt)');
xticklabels({'L2/3','L5/6'})
title('Running')

T_F = readtable('Figure S4.xlsx','Sheet','S4F');

% Sup layers
app_sup_female = strcmp(T_F.Sex, 'F') & strcmp(T_F.Area,'crtx_sup');
app_sup_male = strcmp(T_F.Sex, 'M') & strcmp(T_F.Area,'crtx_sup');

% Deep layers
app_deep_female = strcmp(T_F.Sex, 'F') & strcmp(T_F.Area,'crtx_deep');
app_deep_male = strcmp(T_F.Sex, 'M') & strcmp(T_F.Area,'crtx_deep');

subplot(3,3,6); 
violinplot([T_F.SpikeRate(app_sup_female); T_F.SpikeRate(app_sup_male); T_F.SpikeRate(app_deep_female); T_F.SpikeRate(app_deep_male)], [ones(length(find((app_sup_female)==1)),1); 2*ones(length(find((app_sup_male)==1)),1); 3*ones(length(find((app_deep_female)==1)),1); 4*ones(length(find((app_deep_male)==1)),1)], 'MarkerSize', 12, 'ViolinColor', [0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248; 0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248]);
ylabel('Spikes/s (sqrt)');
xticklabels({'Female', 'Male', 'Female', 'Male'});
box off
ylim([0 6])
offsetAxes(gca);

T_H = readtable('Figure 5.xlsx','Sheet','5C');
subplot(3,3,8)
boxplot_2groups_2depths(T_H, T_H.BR, 0, 1);
ylim([0 .4])
ylabel('Bursting Ratio');
xticklabels({'L2/3','L5/6'})
title('Awake Rest / Small Pupil')

T_I = readtable('Figure 5.xlsx','Sheet','5D');
subplot(3,3,9)
boxplot_2groups_2depths(T_I, T_I.BR, 0, 1);
ylim([0 .4])
ylabel('Bursting Ratio');
xticklabels({'L2/3','L5/6'})
title('Running')

fig = figure;
set(groot,'defaultAxesFontName', 'Arial');
set(groot,'defaultAxesFontSize', 12);
set(groot,'defaultAxesTickDir','out');
set(groot,'defaultAxesTickDirMode','manual');
set(groot,'defaultFigureColor','w');
set(groot,'defaultAxesTitleFontWeight','normal');
set(groot,'defaultAxesTickLength',[0.02 0.02]);

T_A = readtable('Figure S5.xlsx','Sheet','S5A');

% Sup layers
wt_inds_sup = strcmp(T_A.Genotype, 'WT') & strcmp(T_A.Area,'crtx_sup');
app_inds_sup = strcmp(T_A.Genotype, 'APP') & strcmp(T_A.Area,'crtx_sup');

% Deep layers
wt_inds_deep = strcmp(T_A.Genotype, 'WT') & strcmp(T_A.Area,'crtx_deep');
app_inds_deep = strcmp(T_A.Genotype, 'APP') & strcmp(T_A.Area,'crtx_deep');

subplot(4,4,1); 
violinplot([T_A.SpikeRate(wt_inds_sup); T_A.SpikeRate(app_inds_sup); T_A.SpikeRate(wt_inds_deep); T_A.SpikeRate(app_inds_deep)], [ones(length(find((wt_inds_sup)==1)),1); 2*ones(length(find((app_inds_sup)==1)),1); 3*ones(length(find((wt_inds_deep)==1)),1); 4*ones(length(find((app_inds_deep)==1)),1)], 'MarkerSize', 12, 'ViolinColor', [0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248; 0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248]);
ylabel('Spikes/sec (sqrt)');
xticklabels({'WT', 'APP/PS1', 'WT', 'APP/PS1'});
box off
ylim([0 8])
offsetAxes(gca);

subplot(4,4,2)
boxplot_2groups_2depths(T_A, T_A.SpikeRate, 5, 1);
ylim([0 4])
title('Awake Rest / Small Pupil')
xticklabels({'L2/3','L5/6'})
%lgd = legend('WT','APP/PS1','Location','southeast');

T_B = readtable('Figure S5.xlsx','Sheet','S5B');

% Sup layers
wt_inds_sup = strcmp(T_B.Genotype, 'WT') & strcmp(T_B.Area,'crtx_sup');
app_inds_sup = strcmp(T_B.Genotype, 'APP') & strcmp(T_B.Area,'crtx_sup');

% Deep layers
wt_inds_deep = strcmp(T_B.Genotype, 'WT') & strcmp(T_B.Area,'crtx_deep');
app_inds_deep = strcmp(T_B.Genotype, 'APP') & strcmp(T_B.Area,'crtx_deep');

subplot(4,4,3); 
violinplot([T_B.SpikeRate(wt_inds_sup); T_B.SpikeRate(app_inds_sup); T_B.SpikeRate(wt_inds_deep); T_B.SpikeRate(app_inds_deep)], [ones(length(find((wt_inds_sup)==1)),1); 2*ones(length(find((app_inds_sup)==1)),1); 3*ones(length(find((wt_inds_deep)==1)),1); 4*ones(length(find((app_inds_deep)==1)),1)], 'MarkerSize', 12, 'ViolinColor', [0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248; 0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248]);
ylabel('Spikes/sec (sqrt)');
xticklabels({'WT', 'APP/PS1', 'WT', 'APP/PS1'});
box off
ylim([0 8])
offsetAxes(gca);

subplot(4,4,4)
boxplot_2groups_2depths(T_B, T_B.SpikeRate, 5, 1);
ylim([0 4])
title('Running')
xticklabels({'L2/3','L5/6'})
%lgd = legend('WT','APP/PS1','Location','southeast');

T_C = readtable('Figure S5.xlsx','Sheet','S5C');
% Sup layers
wt_inds_sup = strcmp(T_C.Genotype, 'WT') & strcmp(T_C.Area,'crtx_sup');
app_inds_sup = strcmp(T_C.Genotype, 'APP') & strcmp(T_C.Area,'crtx_sup');

% Deep layers
wt_inds_deep = strcmp(T_C.Genotype, 'WT') & strcmp(T_C.Area,'crtx_deep');
app_inds_deep = strcmp(T_C.Genotype, 'APP') & strcmp(T_C.Area,'crtx_deep');

subplot(4,4,5); 
violinplot([T_C.OSI(wt_inds_sup); T_C.OSI(app_inds_sup); T_C.OSI(wt_inds_deep); T_C.OSI(app_inds_deep)], [ones(length(find((wt_inds_sup)==1)),1); 2*ones(length(find((app_inds_sup)==1)),1); 3*ones(length(find((wt_inds_deep)==1)),1); 4*ones(length(find((app_inds_deep)==1)),1)], 'MarkerSize', 12, 'ViolinColor', [0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248; 0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248]);
ylabel('OSI');
xticklabels({'WT', 'APP/PS1', 'WT', 'APP/PS1'});
box off
ylim([0 1])
offsetAxes(gca);

subplot(4,4,6)
boxplot_2groups_2depths(T_C, T_C.OSI, 5, 1);
ylim([0 1])
title('Orientation Selectivity')
xticklabels({'L2/3','L5/6'})
%lgd = legend('WT','APP/PS1','Location','southeast');

T_D = readtable('Figure S5.xlsx','Sheet','S5D');

% Sup layers
wt_inds_sup = strcmp(T_D.Genotype, 'WT') & strcmp(T_D.Area,'crtx_sup');
app_inds_sup = strcmp(T_D.Genotype, 'APP') & strcmp(T_D.Area,'crtx_sup');

% Deep layers
wt_inds_deep = strcmp(T_D.Genotype, 'WT') & strcmp(T_D.Area,'crtx_deep');
app_inds_deep = strcmp(T_D.Genotype, 'APP') & strcmp(T_D.Area,'crtx_deep');

subplot(4,4,7); 
violinplot([T_D.DSI(wt_inds_sup); T_D.DSI(app_inds_sup); T_D.DSI(wt_inds_deep); T_D.DSI(app_inds_deep)], [ones(length(find((wt_inds_sup)==1)),1); 2*ones(length(find((app_inds_sup)==1)),1); 3*ones(length(find((wt_inds_deep)==1)),1); 4*ones(length(find((app_inds_deep)==1)),1)], 'MarkerSize', 12, 'ViolinColor', [0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248; 0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248]);
ylabel('DSI');
xticklabels({'WT', 'APP/PS1', 'WT', 'APP/PS1'});
box off
ylim([0 1])
offsetAxes(gca);

subplot(4,4,8)
boxplot_2groups_2depths(T_D, T_D.DSI, 5, 1);
ylim([0 1])
title('Direction Selectivity')
xticklabels({'L2/3','L5/6'})
%lgd = legend('WT','APP/PS1','Location','southeast');

T_E = readtable('Figure S5.xlsx','Sheet','S5E');

% Sup layers
wt_inds_sup = strcmp(T_E.Genotype, 'WT') & strcmp(T_E.Area,'crtx_sup');
app_inds_sup = strcmp(T_E.Genotype, 'APP') & strcmp(T_E.Area,'crtx_sup');

% Deep layers
wt_inds_deep = strcmp(T_E.Genotype, 'WT') & strcmp(T_E.Area,'crtx_deep');
app_inds_deep = strcmp(T_E.Genotype, 'APP') & strcmp(T_E.Area,'crtx_deep');

subplot(4,4,9); 
violinplot([T_E.SpikeRate(wt_inds_sup); T_E.SpikeRate(app_inds_sup); T_E.SpikeRate(wt_inds_deep); T_E.SpikeRate(app_inds_deep)], [ones(length(find((wt_inds_sup)==1)),1); 2*ones(length(find((app_inds_sup)==1)),1); 3*ones(length(find((wt_inds_deep)==1)),1); 4*ones(length(find((app_inds_deep)==1)),1)], 'MarkerSize', 12, 'ViolinColor', [0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248; 0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248]);
ylabel('Spikes/sec (sqrt)');
xticklabels({'WT', 'APP/PS1', 'WT', 'APP/PS1'});
box off
ylim([0 7])
offsetAxes(gca);

subplot(4,4,10)
boxplot_2groups_2depths(T_E, T_E.SpikeRate, 5, 1);
ylim([0 2])
title('Awake Rest / Small Pupil')
xticklabels({'L2/3','L5/6'})
%lgd = legend('WT','APP/PS1','Location','southeast');

T_F = readtable('Figure S5.xlsx','Sheet','S5F');

% Sup layers
wt_inds_sup = strcmp(T_F.Genotype, 'WT') & strcmp(T_F.Area,'crtx_sup');
app_inds_sup = strcmp(T_F.Genotype, 'APP') & strcmp(T_F.Area,'crtx_sup');

% Deep layers
wt_inds_deep = strcmp(T_F.Genotype, 'WT') & strcmp(T_F.Area,'crtx_deep');
app_inds_deep = strcmp(T_F.Genotype, 'APP') & strcmp(T_F.Area,'crtx_deep');

subplot(4,4,11); 
violinplot([T_F.SpikeRate(wt_inds_sup); T_F.SpikeRate(app_inds_sup); T_F.SpikeRate(wt_inds_deep); T_F.SpikeRate(app_inds_deep)], [ones(length(find((wt_inds_sup)==1)),1); 2*ones(length(find((app_inds_sup)==1)),1); 3*ones(length(find((wt_inds_deep)==1)),1); 4*ones(length(find((app_inds_deep)==1)),1)], 'MarkerSize', 12, 'ViolinColor', [0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248; 0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248]);
ylabel('Spikes/sec (sqrt)');
xticklabels({'WT', 'APP/PS1', 'WT', 'APP/PS1'});
box off
ylim([0 7])
offsetAxes(gca);

subplot(4,4,12)
boxplot_2groups_2depths(T_F, T_F.SpikeRate, 5, 1);
ylim([0 3])
title('Running')
xticklabels({'L2/3','L5/6'})
%lgd = legend('WT','APP/PS1','Location','southeast');

T_G = readtable('Figure S5.xlsx','Sheet','S5G');
% Sup layers
wt_inds_sup = strcmp(T_G.Genotype, 'WT') & strcmp(T_G.Area,'crtx_sup');
app_inds_sup = strcmp(T_G.Genotype, 'APP') & strcmp(T_G.Area,'crtx_sup');

% Deep layers
wt_inds_deep = strcmp(T_G.Genotype, 'WT') & strcmp(T_G.Area,'crtx_deep');
app_inds_deep = strcmp(T_G.Genotype, 'APP') & strcmp(T_G.Area,'crtx_deep');

subplot(4,4,13); 
violinplot([T_G.BR(wt_inds_sup); T_G.BR(app_inds_sup); T_G.BR(wt_inds_deep); T_G.BR(app_inds_deep)], [ones(length(find((wt_inds_sup)==1)),1); 2*ones(length(find((app_inds_sup)==1)),1); 3*ones(length(find((wt_inds_deep)==1)),1); 4*ones(length(find((app_inds_deep)==1)),1)], 'MarkerSize', 12, 'ViolinColor', [0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248; 0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248]);
ylabel('Bursting Ratio');
xticklabels({'WT', 'APP/PS1', 'WT', 'APP/PS1'});
box off
ylim([0 1])
offsetAxes(gca);

subplot(4,4,14)
boxplot_2groups_2depths(T_G, T_G.BR, 5, 1);
ylim([0 .3])
title('Awake Rest / Small Pupil')
xticklabels({'L2/3','L5/6'})
%lgd = legend('WT','APP/PS1','Location','southeast');

T_H = readtable('Figure S5.xlsx','Sheet','S5H');
% Sup layers
wt_inds_sup = strcmp(T_H.Genotype, 'WT') & strcmp(T_H.Area,'crtx_sup');
app_inds_sup = strcmp(T_H.Genotype, 'APP') & strcmp(T_H.Area,'crtx_sup');

% Deep layers
wt_inds_deep = strcmp(T_H.Genotype, 'WT') & strcmp(T_H.Area,'crtx_deep');
app_inds_deep = strcmp(T_H.Genotype, 'APP') & strcmp(T_H.Area,'crtx_deep');

subplot(4,4,15); 
violinplot([T_H.BR(wt_inds_sup); T_H.BR(app_inds_sup); T_H.BR(wt_inds_deep); T_H.BR(app_inds_deep)], [ones(length(find((wt_inds_sup)==1)),1); 2*ones(length(find((app_inds_sup)==1)),1); 3*ones(length(find((wt_inds_deep)==1)),1); 4*ones(length(find((app_inds_deep)==1)),1)], 'MarkerSize', 12, 'ViolinColor', [0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248; 0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248]);
ylabel('Bursting Ratio');
xticklabels({'WT', 'APP/PS1', 'WT', 'APP/PS1'});
box off
ylim([0 1])
offsetAxes(gca);

subplot(4,4,16)
boxplot_2groups_2depths(T_H, T_H.BR, 5, 1);
ylim([0 .3])
title('Running')
xticklabels({'L2/3','L5/6'})
%lgd = legend('WT','APP/PS1','Location','southeast');

set(fig, 'Renderer', 'painters');
fig = figure;
set(groot,'defaultAxesFontName', 'Arial');
set(groot,'defaultAxesFontSize', 12);
set(groot,'defaultAxesTickDir','out');
set(groot,'defaultAxesTickDirMode','manual');
set(groot,'defaultFigureColor','w');
set(groot,'defaultAxesTitleFontWeight','normal');
set(groot,'defaultAxesTickLength',[0.02 0.02]);

T_A = readtable('Figure S6.xlsx','Sheet','S6A');

% Sup layers
wt_inds_sup = strcmp(T_A.Genotype, 'WT') & strcmp(T_A.Area,'crtx_sup');
app_inds_sup = strcmp(T_A.Genotype, 'APP') & strcmp(T_A.Area,'crtx_sup');

% Deep layers
wt_inds_deep = strcmp(T_A.Genotype, 'WT') & strcmp(T_A.Area,'crtx_deep');
app_inds_deep = strcmp(T_A.Genotype, 'APP') & strcmp(T_A.Area,'crtx_deep');

subplot(3,2,1); 
violinplot([T_A.SpikeRate(wt_inds_sup); T_A.SpikeRate(app_inds_sup); T_A.SpikeRate(wt_inds_deep); T_A.SpikeRate(app_inds_deep)], [ones(length(find((wt_inds_sup)==1)),1); 2*ones(length(find((app_inds_sup)==1)),1); 3*ones(length(find((wt_inds_deep)==1)),1); 4*ones(length(find((app_inds_deep)==1)),1)], 'MarkerSize', 12, 'ViolinColor', [0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248; 0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248]);
ylabel('Spikes/sec (sqrt)');
xticklabels({'WT', 'APP/PS1', 'WT', 'APP/PS1'});
box off
ylim([0 8])
offsetAxes(gca);

T_B = readtable('Figure S6.xlsx','Sheet','S6B');

% Sup layers
wt_inds_sup = strcmp(T_B.Genotype, 'WT') & strcmp(T_B.Area,'crtx_sup');
app_inds_sup = strcmp(T_B.Genotype, 'APP') & strcmp(T_B.Area,'crtx_sup');

% Deep layers
wt_inds_deep = strcmp(T_B.Genotype, 'WT') & strcmp(T_B.Area,'crtx_deep');
app_inds_deep = strcmp(T_B.Genotype, 'APP') & strcmp(T_B.Area,'crtx_deep');

subplot(3,2,2); 
violinplot([T_B.SpikeRate(wt_inds_sup); T_B.SpikeRate(app_inds_sup); T_B.SpikeRate(wt_inds_deep); T_B.SpikeRate(app_inds_deep)], [ones(length(find((wt_inds_sup)==1)),1); 2*ones(length(find((app_inds_sup)==1)),1); 3*ones(length(find((wt_inds_deep)==1)),1); 4*ones(length(find((app_inds_deep)==1)),1)], 'MarkerSize', 12, 'ViolinColor', [0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248; 0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248]);
ylabel('Spikes/sec (sqrt)');
xticklabels({'WT', 'APP/PS1', 'WT', 'APP/PS1'});
box off
ylim([0 8])
offsetAxes(gca);

T_C_D = readtable('Figure S6.xlsx','Sheet','S6C-D');
T_C_D.OSI = 1./T_C_D.OSI;
% Sup layers
wt_inds_sup = strcmp(T_C_D.Genotype, 'WT') & strcmp(T_C_D.Area,'crtx_sup');
app_inds_sup = strcmp(T_C_D.Genotype, 'APP') & strcmp(T_C_D.Area,'crtx_sup');

% Deep layers
wt_inds_deep = strcmp(T_C_D.Genotype, 'WT') & strcmp(T_C_D.Area,'crtx_deep');
app_inds_deep = strcmp(T_C_D.Genotype, 'APP') & strcmp(T_C_D.Area,'crtx_deep');

subplot(3,2,3); 
violinplot([T_C_D.OSI(wt_inds_sup); T_C_D.OSI(app_inds_sup); T_C_D.OSI(wt_inds_deep); T_C_D.OSI(app_inds_deep)], [ones(length(find((wt_inds_sup)==1)),1); 2*ones(length(find((app_inds_sup)==1)),1); 3*ones(length(find((wt_inds_deep)==1)),1); 4*ones(length(find((app_inds_deep)==1)),1)], 'MarkerSize', 12, 'ViolinColor', [0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248; 0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248]);
ylabel('OSI');
xticklabels({'WT', 'APP/PS1', 'WT', 'APP/PS1'});
box off
ylim([0 1])
offsetAxes(gca);

subplot(3,2,4)
boxplot_2groups_2depths(T_C_D, T_C_D.OSI, 5, 1);
ylim([0 1])
title('Orientation Selectivity')
xticklabels({'L2/3','L5/6'})

T_E_F = readtable('Figure S6.xlsx','Sheet','S6E-F');

% Sup layers
wt_inds_sup = strcmp(T_E_F.Genotype, 'WT') & strcmp(T_E_F.Area,'crtx_sup');
app_inds_sup = strcmp(T_E_F.Genotype, 'APP') & strcmp(T_E_F.Area,'crtx_sup');

% Deep layers
wt_inds_deep = strcmp(T_E_F.Genotype, 'WT') & strcmp(T_E_F.Area,'crtx_deep');
app_inds_deep = strcmp(T_E_F.Genotype, 'APP') & strcmp(T_E_F.Area,'crtx_deep');

subplot(3,2,5); 
violinplot([T_E_F.DSI(wt_inds_sup); T_E_F.DSI(app_inds_sup); T_E_F.DSI(wt_inds_deep); T_E_F.DSI(app_inds_deep)], [ones(length(find((wt_inds_sup)==1)),1); 2*ones(length(find((app_inds_sup)==1)),1); 3*ones(length(find((wt_inds_deep)==1)),1); 4*ones(length(find((app_inds_deep)==1)),1)], 'MarkerSize', 12, 'ViolinColor', [0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248; 0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248]);
ylabel('DSI');
xticklabels({'WT', 'APP/PS1', 'WT', 'APP/PS1'});
box off
ylim([0 1])
offsetAxes(gca);

subplot(3,2,6)
boxplot_2groups_2depths(T_E_F, T_E_F.DSI, 5, 1);
ylim([0 1])
title('Direction Selectivity')
xticklabels({'L2/3','L5/6'})

set(fig, 'Renderer', 'painters');
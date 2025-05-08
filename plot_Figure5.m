fig = figure;
set(groot,'defaultAxesFontName', 'Arial');
set(groot,'defaultAxesFontSize', 12);
set(groot,'defaultAxesTickDir','out');
set(groot,'defaultAxesTickDirMode','manual');
set(groot,'defaultFigureColor','w');
set(groot,'defaultAxesTitleFontWeight','normal');
set(groot,'defaultAxesTickLength',[0.02 0.02]);

T_A = readtable('Figure 5.xlsx','Sheet','5A');

% Sup layers
wt_inds_sup_inh = strcmp(T_A.Genotype, 'WT') & strcmp(T_A.Area,'crtx_sup');
app_inds_sup_inh = strcmp(T_A.Genotype, 'APP') & strcmp(T_A.Area,'crtx_sup');

% Deep layers
wt_inds_deep_inh = strcmp(T_A.Genotype, 'WT') & strcmp(T_A.Area,'crtx_deep');
app_inds_deep_inh = strcmp(T_A.Genotype, 'APP') & strcmp(T_A.Area,'crtx_deep');

subplot(2,2,1); 
violinplot([T_A.SpikeRate(wt_inds_sup_inh); T_A.SpikeRate(app_inds_sup_inh); T_A.SpikeRate(wt_inds_deep_inh); T_A.SpikeRate(app_inds_deep_inh)], [ones(length(find((wt_inds_sup_inh)==1)),1); 2*ones(length(find((app_inds_sup_inh)==1)),1); 3*ones(length(find((wt_inds_deep_inh)==1)),1); 4*ones(length(find((app_inds_deep_inh)==1)),1)], 'MarkerSize', 12, 'ViolinColor', [0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248; 0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248]);
ylabel('Spikes/sec (sqrt)');
xticklabels({'WT', 'APP/PS1', 'WT', 'APP/PS1'});
box off
ylim([0 6])
offsetAxes(gca);
title('Sponaneous Activity','Awake Rest/ Small Pupil')

T_B = readtable('Figure 5.xlsx','Sheet','5B');

% Sup layers
wt_inds_sup_inh = strcmp(T_B.Genotype, 'WT') & strcmp(T_B.Area,'crtx_sup');
app_inds_sup_inh = strcmp(T_B.Genotype, 'APP') & strcmp(T_B.Area,'crtx_sup');

% Deep layers
wt_inds_deep_inh = strcmp(T_B.Genotype, 'WT') & strcmp(T_B.Area,'crtx_deep');
app_inds_deep_inh = strcmp(T_B.Genotype, 'APP') & strcmp(T_B.Area,'crtx_deep');

subplot(2,2,3); 
violinplot([T_B.SpikeRate(wt_inds_sup_inh); T_B.SpikeRate(app_inds_sup_inh); T_B.SpikeRate(wt_inds_deep_inh); T_B.SpikeRate(app_inds_deep_inh)], [ones(length(find((wt_inds_sup_inh)==1)),1); 2*ones(length(find((app_inds_sup_inh)==1)),1); 3*ones(length(find((wt_inds_deep_inh)==1)),1); 4*ones(length(find((app_inds_deep_inh)==1)),1)], 'MarkerSize', 12, 'ViolinColor', [0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248; 0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248]);
ylabel('Spikes/sec (sqrt)');
xticklabels({'WT', 'APP/PS1', 'WT', 'APP/PS1'});
box off
ylim([0 6])
offsetAxes(gca);
title('Running')

T_C = readtable('Figure 5.xlsx','Sheet','5C');

% Sup layers
wt_inds_sup_inh = strcmp(T_C.Genotype, 'WT') & strcmp(T_C.Area,'crtx_sup');
app_inds_sup_inh = strcmp(T_C.Genotype, 'APP') & strcmp(T_C.Area,'crtx_sup');

% Deep layers
wt_inds_deep_inh = strcmp(T_C.Genotype, 'WT') & strcmp(T_C.Area,'crtx_deep');
app_inds_deep_inh = strcmp(T_C.Genotype, 'APP') & strcmp(T_C.Area,'crtx_deep');

subplot(2,2,2); 
violinplot([T_C.BR(wt_inds_sup_inh); T_C.BR(app_inds_sup_inh); T_C.BR(wt_inds_deep_inh); T_C.BR(app_inds_deep_inh)], [ones(length(find((wt_inds_sup_inh)==1)),1); 2*ones(length(find((app_inds_sup_inh)==1)),1); 3*ones(length(find((wt_inds_deep_inh)==1)),1); 4*ones(length(find((app_inds_deep_inh)==1)),1)], 'MarkerSize', 12, 'ViolinColor', [0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248; 0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248]);
ylabel('Bursting Ratio');
xticklabels({'WT', 'APP/PS1', 'WT', 'APP/PS1'});
box off
ylim([0 1])
offsetAxes(gca);
title('Burstiness','Awake Rest/Small Pupil')

T_D = readtable('Figure 5.xlsx','Sheet','5D');

% Sup layers
wt_inds_sup_inh = strcmp(T_D.Genotype, 'WT') & strcmp(T_D.Area,'crtx_sup');
app_inds_sup_inh = strcmp(T_D.Genotype, 'APP') & strcmp(T_D.Area,'crtx_sup');

% Deep layers
wt_inds_deep_inh = strcmp(T_D.Genotype, 'WT') & strcmp(T_D.Area,'crtx_deep');
app_inds_deep_inh = strcmp(T_D.Genotype, 'APP') & strcmp(T_D.Area,'crtx_deep');

subplot(2,2,4); 
violinplot([T_D.BR(wt_inds_sup_inh); T_D.BR(app_inds_sup_inh); T_D.BR(wt_inds_deep_inh); T_D.BR(app_inds_deep_inh)], [ones(length(find((wt_inds_sup_inh)==1)),1); 2*ones(length(find((app_inds_sup_inh)==1)),1); 3*ones(length(find((wt_inds_deep_inh)==1)),1); 4*ones(length(find((app_inds_deep_inh)==1)),1)], 'MarkerSize', 12, 'ViolinColor', [0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248; 0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248]);
ylabel('Bursting Ratio');
xticklabels({'WT', 'APP/PS1', 'WT', 'APP/PS1'});
box off
ylim([0 1])
offsetAxes(gca);
title('Running')

set(fig, 'Renderer', 'painters');
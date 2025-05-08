fig = figure;
set(groot,'defaultAxesFontName', 'Arial');
set(groot,'defaultAxesFontSize', 12);
set(groot,'defaultAxesTickDir','out');
set(groot,'defaultAxesTickDirMode','manual');
set(groot,'defaultFigureColor','w');
set(groot,'defaultAxesTitleFontWeight','normal');
set(groot,'defaultAxesTickLength',[0.02 0.02]);

T_D = readtable('Figure 3.xlsx','Sheet','3D');

% Sup layers
wt_inds_sup_inh = strcmp(T_D.Genotype, 'WT') & strcmp(T_D.Area,'crtx_sup');
app_inds_sup_inh = strcmp(T_D.Genotype, 'APP') & strcmp(T_D.Area,'crtx_sup');

% Deep layers
wt_inds_deep_inh = strcmp(T_D.Genotype, 'WT') & strcmp(T_D.Area,'crtx_deep');
app_inds_deep_inh = strcmp(T_D.Genotype, 'APP') & strcmp(T_D.Area,'crtx_deep');

subplot(2,2,1); 
violinplot([T_D.SpikeRate(wt_inds_sup_inh); T_D.SpikeRate(app_inds_sup_inh); T_D.SpikeRate(wt_inds_deep_inh); T_D.SpikeRate(app_inds_deep_inh)], [ones(length(find((wt_inds_sup_inh)==1)),1); 2*ones(length(find((app_inds_sup_inh)==1)),1); 3*ones(length(find((wt_inds_deep_inh)==1)),1); 4*ones(length(find((app_inds_deep_inh)==1)),1)], 'MarkerSize', 12, 'ViolinColor', [0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248; 0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248]);
ylabel('Spikes/sec (sqrt)');
xticklabels({'WT', 'APP/PS1', 'WT', 'APP/PS1'});
box off
ylim([0 8])
offsetAxes(gca);
title('APP/PS1 (3mo) FSIs','Awake Rest/Small Pupil')

T_E = readtable('Figure 3.xlsx','Sheet','3E');

% Sup layers
wt_inds_sup_inh = strcmp(T_E.Genotype, 'WT') & strcmp(T_E.Area,'crtx_sup');
app_inds_sup_inh = strcmp(T_E.Genotype, 'APP') & strcmp(T_E.Area,'crtx_sup');

% Deep layers
wt_inds_deep_inh = strcmp(T_E.Genotype, 'WT') & strcmp(T_E.Area,'crtx_deep');
app_inds_deep_inh = strcmp(T_E.Genotype, 'APP') & strcmp(T_E.Area,'crtx_deep');

subplot(2,2,3); 
violinplot([T_E.SpikeRate(wt_inds_sup_inh); T_E.SpikeRate(app_inds_sup_inh); T_E.SpikeRate(wt_inds_deep_inh); T_E.SpikeRate(app_inds_deep_inh)], [ones(length(find((wt_inds_sup_inh)==1)),1); 2*ones(length(find((app_inds_sup_inh)==1)),1); 3*ones(length(find((wt_inds_deep_inh)==1)),1); 4*ones(length(find((app_inds_deep_inh)==1)),1)], 'MarkerSize', 12, 'ViolinColor', [0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248; 0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248]);
ylabel('Spikes/sec (sqrt)');
xticklabels({'WT', 'APP/PS1', 'WT', 'APP/PS1'});
box off
ylim([0 8])
offsetAxes(gca);
title('Running')

T_F = readtable('Figure 3.xlsx','Sheet','3F');

% Sup layers
wt_inds_sup_inh = strcmp(T_F.Genotype, 'WT') & strcmp(T_F.Area,'crtx_sup');
app_inds_sup_inh = strcmp(T_F.Genotype, 'APP') & strcmp(T_F.Area,'crtx_sup');

% Deep layers
wt_inds_deep_inh = strcmp(T_F.Genotype, 'WT') & strcmp(T_F.Area,'crtx_deep');
app_inds_deep_inh = strcmp(T_F.Genotype, 'APP') & strcmp(T_F.Area,'crtx_deep');

subplot(2,2,2); 
violinplot([T_F.SpikeRate(wt_inds_sup_inh); T_F.SpikeRate(app_inds_sup_inh); T_F.SpikeRate(wt_inds_deep_inh); T_F.SpikeRate(app_inds_deep_inh)], [ones(length(find((wt_inds_sup_inh)==1)),1); 2*ones(length(find((app_inds_sup_inh)==1)),1); 3*ones(length(find((wt_inds_deep_inh)==1)),1); 4*ones(length(find((app_inds_deep_inh)==1)),1)], 'MarkerSize', 12, 'ViolinColor', [0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248; 0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248]);
ylabel('Spikes/sec (sqrt)');
xticklabels({'WT', '\itApp^{NL-G-F}\rm', 'WT', 'APP/PS1'});
box off
ylim([0 6])
offsetAxes(gca);
title('\itApp^{NL-G-F}\rm (3mo) FSIs','Awake Rest/Small Pupil')


T_G = readtable('Figure 3.xlsx','Sheet','3G');

% Sup layers
wt_inds_sup_inh = strcmp(T_G.Genotype, 'WT') & strcmp(T_G.Area,'crtx_sup');
app_inds_sup_inh = strcmp(T_G.Genotype, 'APP') & strcmp(T_G.Area,'crtx_sup');

% Deep layers
wt_inds_deep_inh = strcmp(T_G.Genotype, 'WT') & strcmp(T_G.Area,'crtx_deep');
app_inds_deep_inh = strcmp(T_G.Genotype, 'APP') & strcmp(T_G.Area,'crtx_deep');

subplot(2,2,4); 
violinplot([T_G.SpikeRate(wt_inds_sup_inh); T_G.SpikeRate(app_inds_sup_inh); T_G.SpikeRate(wt_inds_deep_inh); T_G.SpikeRate(app_inds_deep_inh)], [ones(length(find((wt_inds_sup_inh)==1)),1); 2*ones(length(find((app_inds_sup_inh)==1)),1); 3*ones(length(find((wt_inds_deep_inh)==1)),1); 4*ones(length(find((app_inds_deep_inh)==1)),1)], 'MarkerSize', 12, 'ViolinColor', [0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248; 0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248]);
ylabel('Spikes/sec (sqrt)');
xticklabels({'WT', '\itApp^{NL-G-F}\rm', 'WT', 'APP/PS1'});
box off
ylim([0 6])
offsetAxes(gca);
title('Running')

set(fig, 'Renderer', 'painters');
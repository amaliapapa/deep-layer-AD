fig = figure;
set(groot,'defaultAxesFontName', 'Arial');
set(groot,'defaultAxesFontSize', 12);
set(groot,'defaultAxesTickDir','out');
set(groot,'defaultAxesTickDirMode','manual');
set(groot,'defaultFigureColor','w');
set(groot,'defaultAxesTitleFontWeight','normal');
set(groot,'defaultAxesTickLength',[0.02 0.02]);

T_D = readtable('Figure S1.xlsx','Sheet','S1D');

subplot(3,2,2);
bar(T_D.Bin_um+25,T_D.mo6,'FaceColor',[1 1 0]);
hold on;
bar(T_D.Bin_um+25,T_D.mo4,'FaceColor',[0.9290 0.6940 0.1250]);
bar(T_D.Bin_um+25,T_D.mo2,'FaceColor',[0.8500 0.3250 0.0980]);


T_E = readtable('Figure S1.xlsx','Sheet','S1E');

% Sup layers
wt_inds_sup_inh = strcmp(T_E.Genotype, 'WT') & strcmp(T_E.Area,'crtx_sup');
app_inds_sup_inh = strcmp(T_E.Genotype, 'APP') & strcmp(T_E.Area,'crtx_sup');

% Deep layers
wt_inds_deep_inh = strcmp(T_E.Genotype, 'WT') & strcmp(T_E.Area,'crtx_deep');
app_inds_deep_inh = strcmp(T_E.Genotype, 'APP') & strcmp(T_E.Area,'crtx_deep');

subplot(3,2,3); 
violinplot([T_E.SpikeRate(wt_inds_sup_inh); T_E.SpikeRate(app_inds_sup_inh); T_E.SpikeRate(wt_inds_deep_inh); T_E.SpikeRate(app_inds_deep_inh)], [ones(length(find((wt_inds_sup_inh)==1)),1); 2*ones(length(find((app_inds_sup_inh)==1)),1); 3*ones(length(find((wt_inds_deep_inh)==1)),1); 4*ones(length(find((app_inds_deep_inh)==1)),1)], 'MarkerSize', 12, 'ViolinColor', [0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248; 0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248]);
ylabel('Spikes/sec (sqrt)');
xticklabels({'WT', 'APP/PS1', 'WT', 'APP/PS1'});
box off
ylim([0 7])
offsetAxes(gca);
title('FSIs')

subplot(3,2,4)
mean_spkr_inh = T_E.SpikeRate;
boxplot_2groups_2depths(T_E, mean_spkr_inh, 5, 0);
ylim([0 1.5])
xticklabels({'L2/3','L5/6'})

T_F = readtable('Figure S1.xlsx','Sheet','S1F');

% Sup layers
wt_inds_sup_exc = strcmp(T_F.Genotype, 'WT') & strcmp(T_F.Area,'crtx_sup');
app_inds_sup_exc = strcmp(T_F.Genotype, 'APP') & strcmp(T_F.Area,'crtx_sup');

% Deep layers
wt_inds_deep_inh = strcmp(T_F.Genotype, 'WT') & strcmp(T_F.Area,'crtx_deep');
app_inds_deep_inh = strcmp(T_F.Genotype, 'APP') & strcmp(T_F.Area,'crtx_deep');

subplot(3,2,5); 
violinplot([T_F.SpikeRate(wt_inds_sup_exc); T_F.SpikeRate(app_inds_sup_exc); T_F.SpikeRate(wt_inds_deep_inh); T_F.SpikeRate(app_inds_deep_inh)], [ones(length(find((wt_inds_sup_exc)==1)),1); 2*ones(length(find((app_inds_sup_exc)==1)),1); 3*ones(length(find((wt_inds_deep_inh)==1)),1); 4*ones(length(find((app_inds_deep_inh)==1)),1)], 'MarkerSize', 12, 'ViolinColor', [0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248; 0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248]);
ylabel('Spikes/sec (sqrt)');
xticklabels({'WT', 'APP/PS1', 'WT', 'APP/PS1'});
box off
ylim([0 7])
offsetAxes(gca);
title('RS Excitatory Neurons')

subplot(3,2,6)
mean_spkr_exc = T_F.SpikeRate;
boxplot_2groups_2depths(T_F, mean_spkr_exc, 5, 0);
ylim([0 1.5])
xticklabels({'L2/3','L5/6'})
lgd = legend('WT','APP/PS1','Location','southeast');


set(fig, 'Renderer', 'painters');

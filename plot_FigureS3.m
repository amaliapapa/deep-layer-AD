fig = figure;
set(groot,'defaultAxesFontName', 'Arial');
set(groot,'defaultAxesFontSize', 12);
set(groot,'defaultAxesTickDir','out');
set(groot,'defaultAxesTickDirMode','manual');
set(groot,'defaultFigureColor','w');
set(groot,'defaultAxesTitleFontWeight','normal');
set(groot,'defaultAxesTickLength',[0.02 0.02]);

T_A_E = readtable('Figure S3.xlsx','Sheet','S3 A-E');

subplot(5,5,1);
boxplot_2groups(T_A_E.Running, T_A_E.Genotype, 1)
box off
ylim([0 100])
ylabel('Time running (%)')

subplot(5,5,6);
boxplot_2groups(T_A_E.Whisking, T_A_E.Genotype, 1)
box off
ylim([0 100])
ylabel('Whisking movement (pixels)')

subplot(5,5,11);
boxplot_2groups(T_A_E.Pupil_location, T_A_E.Genotype, 1)
box off
ylim([0.5 3])
ylabel('Pupil location movement')

subplot(5,5,16);
boxplot_2groups(T_A_E.Pupil_size_Rest, T_A_E.Genotype, 1)
box off
ylim([0 110])
ylabel('Pupil size / Rest (pixels)')

subplot(5,5,21);
boxplot_2groups(T_A_E.Pupil_size_Running, T_A_E.Genotype, 1)
box off
ylim([50 350])
ylabel('Pupil size / Running (pixels)')

T_M_J_L2_4 = readtable('Figure S3.xlsx','Sheet','S3 F-J FSIs L2-4');

wt_mice = strcmp(T_M_J_L2_4.Genotype, 'WT');
app_mice = strcmp(T_M_J_L2_4.Genotype, 'APP');

subplot(5,5,2);

violinplot([T_M_J_L2_4.Running(wt_mice); T_M_J_L2_4.Running(app_mice)], [ones(length(find((wt_mice)==1)),1); 2*ones(length(find((app_mice)==1)),1)], 'MarkerSize', 12, 'ViolinColor', [0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248]);
ylabel('Running impact');
xticklabels({'WT', '\itApp^{NL-G-F}\rm'});
box off
ylim([-1 1.5])
title('L2-4')
offsetAxes(gca);

subplot(5,5,7);

violinplot([T_M_J_L2_4.Whisking(wt_mice); T_M_J_L2_4.Whisking(app_mice)], [ones(length(find((wt_mice)==1)),1); 2*ones(length(find((app_mice)==1)),1)], 'MarkerSize', 12, 'ViolinColor', [0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248]);
ylabel('Whisking impact');
xticklabels({'WT', '\itApp^{NL-G-F}\rm'});
box off
ylim([-1 1.5])
offsetAxes(gca);

subplot(5,5,12);

violinplot([T_M_J_L2_4.Pupil_location(wt_mice); T_M_J_L2_4.Pupil_location(app_mice)], [ones(length(find((wt_mice)==1)),1); 2*ones(length(find((app_mice)==1)),1)], 'MarkerSize', 12, 'ViolinColor', [0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248]);
ylabel('Pupil location impact');
xticklabels({'WT', '\itApp^{NL-G-F}\rm'});
box off
ylim([-1 1.5])
offsetAxes(gca);

subplot(5,5,17);

violinplot([T_M_J_L2_4.Pupil_size(wt_mice); T_M_J_L2_4.Pupil_size(app_mice)], [ones(length(find((wt_mice)==1)),1); 2*ones(length(find((app_mice)==1)),1)], 'MarkerSize', 12, 'ViolinColor', [0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248]);
ylabel('Pupil size impact');
xticklabels({'WT', '\itApp^{NL-G-F}\rm'});
box off
ylim([-1 1.5])
offsetAxes(gca);

subplot(5,5,22);

violinplot([T_M_J_L2_4.Variance_explained(wt_mice).*100; T_M_J_L2_4.Variance_explained(app_mice).*100], [ones(length(find((wt_mice)==1)),1); 2*ones(length(find((app_mice)==1)),1)], 'MarkerSize', 12, 'ViolinColor', [0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248]);
ylabel('Variance explained');
xticklabels({'WT', '\itApp^{NL-G-F}\rm'});
box off
ylim([0 80])
offsetAxes(gca);

T_M_J_L5_6 = readtable('Figure S3.xlsx','Sheet','S3 F-J FSIs L5-6');

wt_mice = strcmp(T_M_J_L5_6.Genotype, 'WT');
app_mice = strcmp(T_M_J_L5_6.Genotype, 'APP');

subplot(5,5,3);

violinplot([T_M_J_L5_6.Running(wt_mice); T_M_J_L5_6.Running(app_mice)], [ones(length(find((wt_mice)==1)),1); 2*ones(length(find((app_mice)==1)),1)], 'MarkerSize', 12, 'ViolinColor', [0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248]);
%ylabel('Running impact');
xticklabels({'WT', '\itApp^{NL-G-F}\rm'});
box off
ylim([-1 1.5])
title('L5/6')
offsetAxes(gca);

subplot(5,5,8);

violinplot([T_M_J_L5_6.Whisking(wt_mice); T_M_J_L5_6.Whisking(app_mice)], [ones(length(find((wt_mice)==1)),1); 2*ones(length(find((app_mice)==1)),1)], 'MarkerSize', 12, 'ViolinColor', [0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248]);
%ylabel('Whisking impact');
xticklabels({'WT', '\itApp^{NL-G-F}\rm'});
box off
ylim([-1 1.5])
offsetAxes(gca);

subplot(5,5,13);

violinplot([T_M_J_L5_6.Pupil_location(wt_mice); T_M_J_L5_6.Pupil_location(app_mice)], [ones(length(find((wt_mice)==1)),1); 2*ones(length(find((app_mice)==1)),1)], 'MarkerSize', 12, 'ViolinColor', [0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248]);
%ylabel('Pupil location impact');
xticklabels({'WT', '\itApp^{NL-G-F}\rm'});
box off
ylim([-1 1.5])
offsetAxes(gca);

subplot(5,5,18);

violinplot([T_M_J_L5_6.Pupil_size(wt_mice); T_M_J_L5_6.Pupil_size(app_mice)], [ones(length(find((wt_mice)==1)),1); 2*ones(length(find((app_mice)==1)),1)], 'MarkerSize', 12, 'ViolinColor', [0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248]);
%ylabel('Pupil size impact');
xticklabels({'WT', '\itApp^{NL-G-F}\rm'});
box off
ylim([-1 1.5])
offsetAxes(gca);

subplot(5,5,23);

violinplot([T_M_J_L5_6.Variance_explained(wt_mice).*100; T_M_J_L5_6.Variance_explained(app_mice).*100], [ones(length(find((wt_mice)==1)),1); 2*ones(length(find((app_mice)==1)),1)], 'MarkerSize', 12, 'ViolinColor', [0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248]);
%ylabel('Variance explained');
xticklabels({'WT', '\itApp^{NL-G-F}\rm'});
box off
ylim([0 80])
offsetAxes(gca);

T_KF = readtable('Figure 3.xlsx','Sheet','3F');
subplot(5,5,4)
boxplot_2groups_2depths(T_KF, T_KF.SpikeRate, 5, 1);
ylim([0 3])
ylabel('Spikes/s (sqrt)')
title('Awake Rest / Small Pupil')
xticklabels({'L2/3','L5'})
%lgd = legend('WT','\itApp^{NL-G-F}\rm','Location','southeast');

T_KG = readtable('Figure 3.xlsx','Sheet','3G');
subplot(5,5,5)
boxplot_2groups_2depths(T_KG, T_KG.SpikeRate, 5, 1);
ylim([0 3])
title('Running')
xticklabels({'L2/3','L5'})
lgd = legend('WT','\itApp^{NL-G-F}\rm','Location','southeast');

T_L = readtable('Figure S3.xlsx','Sheet','S3L');

% Sup layers
wt_inds_sup_exc = strcmp(T_L.Genotype, 'WT') & strcmp(T_L.Area,'crtx_sup');
app_inds_sup_exc = strcmp(T_L.Genotype, 'APP') & strcmp(T_L.Area,'crtx_sup');

% Deep layers
wt_inds_deep_exc = strcmp(T_L.Genotype, 'WT') & strcmp(T_L.Area,'crtx_deep');
app_inds_deep_exc = strcmp(T_L.Genotype, 'APP') & strcmp(T_L.Area,'crtx_deep');

subplot(5,5,14); 
violinplot([T_L.SpikeRate(wt_inds_sup_exc); T_L.SpikeRate(app_inds_sup_exc); T_L.SpikeRate(wt_inds_deep_exc); T_L.SpikeRate(app_inds_deep_exc)], [ones(length(find((wt_inds_sup_exc)==1)),1); 2*ones(length(find((app_inds_sup_exc)==1)),1); 3*ones(length(find((wt_inds_deep_exc)==1)),1); 4*ones(length(find((app_inds_deep_exc)==1)),1)], 'MarkerSize', 12, 'ViolinColor', [0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248; 0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248]);
ylabel('Spikes/sec (sqrt)');
xticklabels({'WT', '\itApp^{NL-G-F}\rm', 'WT', '\itApp^{NL-G-F}\rm'});
box off
ylim([0 6.5])
offsetAxes(gca);

subplot(5,5,15)
boxplot_2groups_2depths(T_L, T_L.SpikeRate, 5, 1);
ylim([0 3])
xticklabels({'L2/3','L5'})
%lgd = legend('WT','\itApp^{NL-G-F}\rm','Location','southeast');

T_M = readtable('Figure S3.xlsx','Sheet','S3M');

% Sup layers
wt_inds_sup_br = strcmp(T_M.Genotype, 'WT') & strcmp(T_M.Area,'crtx_sup');
app_inds_sup_br = strcmp(T_M.Genotype, 'APP') & strcmp(T_M.Area,'crtx_sup');

% Deep layers
wt_inds_deep_exc = strcmp(T_M.Genotype, 'WT') & strcmp(T_M.Area,'crtx_deep');
app_inds_deep_exc = strcmp(T_M.Genotype, 'APP') & strcmp(T_M.Area,'crtx_deep');

subplot(5,5,24); 
violinplot([T_M.BR(wt_inds_sup_br); T_M.BR(app_inds_sup_br); T_M.BR(wt_inds_deep_exc); T_M.BR(app_inds_deep_exc)], [ones(length(find((wt_inds_sup_br)==1)),1); 2*ones(length(find((app_inds_sup_br)==1)),1); 3*ones(length(find((wt_inds_deep_exc)==1)),1); 4*ones(length(find((app_inds_deep_exc)==1)),1)], 'MarkerSize', 12, 'ViolinColor', [0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248; 0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248]);
ylabel('Bursting Ratio');
xticklabels({'WT', '\itApp^{NL-G-F}\rm', 'WT', '\itApp^{NL-G-F}\rm'});
box off
ylim([0 1])
offsetAxes(gca);

subplot(5,5,25)
boxplot_2groups_2depths(T_M, T_M.BR, 5, 1);
ylim([0 0.3])
xticklabels({'L2/3','L5'})
%lgd = legend('WT','\itApp^{NL-G-F}\rm','Location','southeast');
set(fig, 'Renderer', 'painters');
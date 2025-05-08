fig = figure;
set(groot,'defaultAxesFontName', 'Arial');
set(groot,'defaultAxesFontSize', 12);
set(groot,'defaultAxesTickDir','out');
set(groot,'defaultAxesTickDirMode','manual');
set(groot,'defaultFigureColor','w');
set(groot,'defaultAxesTitleFontWeight','normal');
set(groot,'defaultAxesTickLength',[0.02 0.02]);

T_A_E = readtable('Figure S2.xlsx','Sheet','S2 A-E');

subplot(5,5,1);
boxplot_2groups(T_A_E.Running, T_A_E.Genotype, 1)
box off
ylim([0 80])
ylabel('Time running (%)')

subplot(5,5,6);
boxplot_2groups(T_A_E.Whisking, T_A_E.Genotype, 1)
box off
ylim([0 80])
ylabel('Whisking movement (pixels)')


subplot(5,5,11);
boxplot_2groups(T_A_E.Pupil_location, T_A_E.Genotype, 1)
box off
ylim([1 3.6])
ylabel('Pupil location movement')

subplot(5,5,16);
boxplot_2groups(T_A_E.Pupil_size_Rest, T_A_E.Genotype, 1)
box off
ylim([0 500])
ylabel('Pupil size / Rest (pixels)')


subplot(5,5,21);
boxplot_2groups(T_A_E.Pupil_size_Running, T_A_E.Genotype, 1)
box off
ylim([0 800])
ylabel('Pupil size / Running (pixels)')


T_F_J_L2_4 = readtable('Figure S2.xlsx','Sheet','S2 F-J FSIs L2-4');

wt_mice = strcmp(T_F_J_L2_4.Genotype, 'WT');
app_mice = strcmp(T_F_J_L2_4.Genotype, 'APP');

subplot(5,5,2);

violinplot([T_F_J_L2_4.Running(wt_mice); T_F_J_L2_4.Running(app_mice)], [ones(length(find((wt_mice)==1)),1); 2*ones(length(find((app_mice)==1)),1)], 'MarkerSize', 12, 'ViolinColor', [0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248]);
ylabel('Running impact');
xticklabels({'WT', 'APP/PS1'});
box off
ylim([-1 1.5])
title('L2-4')
offsetAxes(gca);

subplot(5,5,7);

violinplot([T_F_J_L2_4.Whisking(wt_mice); T_F_J_L2_4.Whisking(app_mice)], [ones(length(find((wt_mice)==1)),1); 2*ones(length(find((app_mice)==1)),1)], 'MarkerSize', 12, 'ViolinColor', [0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248]);
ylabel('Whisking impact');
xticklabels({'WT', 'APP/PS1'});
box off
ylim([-1 1.5])
offsetAxes(gca);

subplot(5,5,12);

violinplot([T_F_J_L2_4.Pupil_location(wt_mice); T_F_J_L2_4.Pupil_location(app_mice)], [ones(length(find((wt_mice)==1)),1); 2*ones(length(find((app_mice)==1)),1)], 'MarkerSize', 12, 'ViolinColor', [0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248]);
ylabel('Pupil location impact');
xticklabels({'WT', 'APP/PS1'});
box off
ylim([-1 1.5])
offsetAxes(gca);

subplot(5,5,17);

violinplot([T_F_J_L2_4.Pupil_size(wt_mice); T_F_J_L2_4.Pupil_size(app_mice)], [ones(length(find((wt_mice)==1)),1); 2*ones(length(find((app_mice)==1)),1)], 'MarkerSize', 12, 'ViolinColor', [0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248]);
ylabel('Pupil size impact');
xticklabels({'WT', 'APP/PS1'});
box off
ylim([-1 1.5])
offsetAxes(gca);

subplot(5,5,22);

violinplot([T_F_J_L2_4.Variance_explained(wt_mice).*100; T_F_J_L2_4.Variance_explained(app_mice).*100], [ones(length(find((wt_mice)==1)),1); 2*ones(length(find((app_mice)==1)),1)], 'MarkerSize', 12, 'ViolinColor', [0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248]);
ylabel('Variance explained');
xticklabels({'WT', 'APP/PS1'});
box off
ylim([0 80])
offsetAxes(gca);

T_F_J_L5_6 = readtable('Figure S2.xlsx','Sheet','S2 F-J FSIs L5-6');

wt_mice = strcmp(T_F_J_L5_6.Genotype, 'WT');
app_mice = strcmp(T_F_J_L5_6.Genotype, 'APP');

subplot(5,5,3);

violinplot([T_F_J_L5_6.Running(wt_mice); T_F_J_L5_6.Running(app_mice)], [ones(length(find((wt_mice)==1)),1); 2*ones(length(find((app_mice)==1)),1)], 'MarkerSize', 12, 'ViolinColor', [0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248]);
%ylabel('Running impact');
xticklabels({'WT', 'APP/PS1'});
box off
ylim([-1 1.5])
title('L5/6')
offsetAxes(gca);

subplot(5,5,8);

violinplot([T_F_J_L5_6.Whisking(wt_mice); T_F_J_L5_6.Whisking(app_mice)], [ones(length(find((wt_mice)==1)),1); 2*ones(length(find((app_mice)==1)),1)], 'MarkerSize', 12, 'ViolinColor', [0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248]);
%ylabel('Whisking impact');
xticklabels({'WT', 'APP/PS1'});
box off
ylim([-1 1.5])
offsetAxes(gca);

subplot(5,5,13);

violinplot([T_F_J_L5_6.Pupil_location(wt_mice); T_F_J_L5_6.Pupil_location(app_mice)], [ones(length(find((wt_mice)==1)),1); 2*ones(length(find((app_mice)==1)),1)], 'MarkerSize', 12, 'ViolinColor', [0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248]);
%ylabel('Pupil location impact');
xticklabels({'WT', 'APP/PS1'});
box off
ylim([-1 1.5])
offsetAxes(gca);

subplot(5,5,18);

violinplot([T_F_J_L5_6.Pupil_size(wt_mice); T_F_J_L5_6.Pupil_size(app_mice)], [ones(length(find((wt_mice)==1)),1); 2*ones(length(find((app_mice)==1)),1)], 'MarkerSize', 12, 'ViolinColor', [0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248]);
%ylabel('Pupil size impact');
xticklabels({'WT', 'APP/PS1'});
box off
ylim([-1 1.5])
offsetAxes(gca);

subplot(5,5,23);

violinplot([T_F_J_L5_6.Variance_explained(wt_mice).*100; T_F_J_L5_6.Variance_explained(app_mice).*100], [ones(length(find((wt_mice)==1)),1); 2*ones(length(find((app_mice)==1)),1)], 'MarkerSize', 12, 'ViolinColor', [0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248]);
%ylabel('Variance explained');
xticklabels({'WT', 'APP/PS1'});
box off
ylim([0 80])
offsetAxes(gca);

T_K_O_L2_4 = readtable('Figure S2.xlsx','Sheet','S2 K-O Exc L2-4');

wt_mice = strcmp(T_K_O_L2_4.Genotype, 'WT');
app_mice = strcmp(T_K_O_L2_4.Genotype, 'APP');

subplot(5,5,4);

violinplot([T_K_O_L2_4.Running(wt_mice); T_K_O_L2_4.Running(app_mice)], [ones(length(find((wt_mice)==1)),1); 2*ones(length(find((app_mice)==1)),1)], 'MarkerSize', 12, 'ViolinColor', [0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248]);
ylabel('Running impact');
xticklabels({'WT', 'APP/PS1'});
box off
ylim([-1 1.5])
title('L2-4')
offsetAxes(gca);

subplot(5,5,9);

violinplot([T_K_O_L2_4.Whisking(wt_mice); T_K_O_L2_4.Whisking(app_mice)], [ones(length(find((wt_mice)==1)),1); 2*ones(length(find((app_mice)==1)),1)], 'MarkerSize', 12, 'ViolinColor', [0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248]);
ylabel('Whisking impact');
xticklabels({'WT', 'APP/PS1'});
box off
ylim([-1 1.5])
offsetAxes(gca);

subplot(5,5,14);

violinplot([T_K_O_L2_4.Pupil_location(wt_mice); T_K_O_L2_4.Pupil_location(app_mice)], [ones(length(find((wt_mice)==1)),1); 2*ones(length(find((app_mice)==1)),1)], 'MarkerSize', 12, 'ViolinColor', [0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248]);
ylabel('Pupil location impact');
xticklabels({'WT', 'APP/PS1'});
box off
ylim([-1 1.5])
offsetAxes(gca);

subplot(5,5,19);

violinplot([T_K_O_L2_4.Pupil_size(wt_mice); T_K_O_L2_4.Pupil_size(app_mice)], [ones(length(find((wt_mice)==1)),1); 2*ones(length(find((app_mice)==1)),1)], 'MarkerSize', 12, 'ViolinColor', [0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248]);
ylabel('Pupil size impact');
xticklabels({'WT', 'APP/PS1'});
box off
ylim([-1 1.5])
offsetAxes(gca);

subplot(5,5,24);

violinplot([T_K_O_L2_4.Variance_explained(wt_mice).*100; T_K_O_L2_4.Variance_explained(app_mice).*100], [ones(length(find((wt_mice)==1)),1); 2*ones(length(find((app_mice)==1)),1)], 'MarkerSize', 12, 'ViolinColor', [0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248]);
ylabel('Variance explained');
xticklabels({'WT', 'APP/PS1'});
box off
ylim([0 80])
offsetAxes(gca);

T_K_O_L5_6 = readtable('Figure S2.xlsx','Sheet','S2 K-O Exc L5-6');

wt_mice = strcmp(T_K_O_L5_6.Genotype, 'WT');
app_mice = strcmp(T_K_O_L5_6.Genotype, 'APP');

subplot(5,5,5);

violinplot([T_K_O_L5_6.Running(wt_mice); T_K_O_L5_6.Running(app_mice)], [ones(length(find((wt_mice)==1)),1); 2*ones(length(find((app_mice)==1)),1)], 'MarkerSize', 12, 'ViolinColor', [0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248]);
%ylabel('Running impact');
xticklabels({'WT', 'APP/PS1'});
box off
ylim([-1 1.5])
title('L5/6')
offsetAxes(gca);

subplot(5,5,10);

violinplot([T_K_O_L5_6.Whisking(wt_mice); T_K_O_L5_6.Whisking(app_mice)], [ones(length(find((wt_mice)==1)),1); 2*ones(length(find((app_mice)==1)),1)], 'MarkerSize', 12, 'ViolinColor', [0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248]);
%ylabel('Whisking impact');
xticklabels({'WT', 'APP/PS1'});
box off
ylim([-1 1.5])
offsetAxes(gca);

subplot(5,5,15);

violinplot([T_K_O_L5_6.Pupil_location(wt_mice); T_K_O_L5_6.Pupil_location(app_mice)], [ones(length(find((wt_mice)==1)),1); 2*ones(length(find((app_mice)==1)),1)], 'MarkerSize', 12, 'ViolinColor', [0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248]);
%ylabel('Pupil location impact');
xticklabels({'WT', 'APP/PS1'});
box off
ylim([-1 1.5])
offsetAxes(gca);

subplot(5,5,20);

violinplot([T_K_O_L5_6.Pupil_size(wt_mice); T_K_O_L5_6.Pupil_size(app_mice)], [ones(length(find((wt_mice)==1)),1); 2*ones(length(find((app_mice)==1)),1)], 'MarkerSize', 12, 'ViolinColor', [0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248]);
%ylabel('Pupil size impact');
xticklabels({'WT', 'APP/PS1'});
box off
ylim([-1 1.5])
offsetAxes(gca);

subplot(5,5,25);

violinplot([T_K_O_L5_6.Variance_explained(wt_mice).*100; T_K_O_L5_6.Variance_explained(app_mice).*100], [ones(length(find((wt_mice)==1)),1); 2*ones(length(find((app_mice)==1)),1)], 'MarkerSize', 12, 'ViolinColor', [0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248]);
%ylabel('Variance explained');
xticklabels({'WT', 'APP/PS1'});
box off
ylim([0 80])
offsetAxes(gca);

set(fig, 'Renderer', 'painters');

fig = figure;
set(groot,'defaultAxesFontName', 'Arial');
set(groot,'defaultAxesFontSize', 12);
set(groot,'defaultAxesTickDir','out');
set(groot,'defaultAxesTickDirMode','manual');
set(groot,'defaultFigureColor','w');
set(groot,'defaultAxesTitleFontWeight','normal');
set(groot,'defaultAxesTickLength',[0.02 0.02]);

T_B = readtable('Figure 7.xlsx','Sheet','7B');

subplot(2,6,3);
boxplot_2groups_aav(T_B.Synapse_inn_PV, T_B.AAV, 0)
box off
ylim([0 12])
xticklabels({'L5/6'})
ylabel({'Excitatory synapses','on PV+ soma'})
lgd = legend('GFP','NPTX2','Location','southeast');


T_Dl = readtable('Figure 7.xlsx','Sheet','7D left');

subplot(2,6,7);

gfp_mice = strcmp(T_Dl.AAV, 'GFP');
nptx2_mice = strcmp(T_Dl.AAV, 'NPTX2');

violinplot([T_Dl.SpikeRate(gfp_mice); T_Dl.SpikeRate(nptx2_mice)], [ones(length(find((gfp_mice)==1)),1); 2*ones(length(find((nptx2_mice)==1)),1)], 'MarkerSize', 12, 'ViolinColor', [0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248]);
ylabel('Spikes/sec (sqrt)');
xticklabels({'GFP', 'NPTX2'});
box off
ylim([0 6.5])
title('Awake Rest/ Small Pupil')
offsetAxes(gca);

T_Dr = readtable('Figure 7.xlsx','Sheet','7D right');

subplot(2,6,8);

gfp_mice = strcmp(T_Dr.AAV, 'GFP');
nptx2_mice = strcmp(T_Dr.AAV, 'NPTX2');

violinplot([T_Dr.SpikeRate(gfp_mice); T_Dr.SpikeRate(nptx2_mice)], [ones(length(find((gfp_mice)==1)),1); 2*ones(length(find((nptx2_mice)==1)),1)], 'MarkerSize', 12, 'ViolinColor', [0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248]);
ylabel('Spikes/sec (sqrt)');
xticklabels({'GFP', 'NPTX2'});
box off
ylim([0 12])
title('Running')
offsetAxes(gca);

T_El = readtable('Figure 7.xlsx','Sheet','7E left');

subplot(2,6,9);

gfp_mice = strcmp(T_El.AAV, 'GFP');
nptx2_mice = strcmp(T_El.AAV, 'NPTX2');

violinplot([T_El.SpikeRate(gfp_mice); T_El.SpikeRate(nptx2_mice)], [ones(length(find((gfp_mice)==1)),1); 2*ones(length(find((nptx2_mice)==1)),1)], 'MarkerSize', 12, 'ViolinColor', [0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248]);
ylabel('Spikes/sec (sqrt)');
xticklabels({'GFP', 'NPTX2'});
box off
ylim([0 6.5])
title('Awake Rest/ Small Pupil')
offsetAxes(gca);

T_Er = readtable('Figure 7.xlsx','Sheet','7E right');

subplot(2,6,10);

gfp_mice = strcmp(T_Er.AAV, 'GFP');
nptx2_mice = strcmp(T_Er.AAV, 'NPTX2');

violinplot([T_Er.SpikeRate(gfp_mice); T_Er.SpikeRate(nptx2_mice)], [ones(length(find((gfp_mice)==1)),1); 2*ones(length(find((nptx2_mice)==1)),1)], 'MarkerSize', 12, 'ViolinColor', [0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248]);
ylabel('Spikes/sec (sqrt)');
xticklabels({'GFP', 'NPTX2'});
box off
ylim([0 10])
title('Running')
offsetAxes(gca);

T_Fl = readtable('Figure 7.xlsx','Sheet','7F left');

subplot(2,6,11);

gfp_mice = strcmp(T_Fl.AAV, 'GFP');
nptx2_mice = strcmp(T_Fl.AAV, 'NPTX2');

violinplot([T_Fl.BR(gfp_mice); T_Fl.BR(nptx2_mice)], [ones(length(find((gfp_mice)==1)),1); 2*ones(length(find((nptx2_mice)==1)),1)], 'MarkerSize', 12, 'ViolinColor', [0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248]);
ylabel('Bursting Ratio');
xticklabels({'GFP', 'NPTX2'});
box off
ylim([0 1])
title('Awake Rest/ Small Pupil')
offsetAxes(gca);

T_Fr = readtable('Figure 7.xlsx','Sheet','7F right');

subplot(2,6,12);

gfp_mice = strcmp(T_Fr.AAV, 'GFP');
nptx2_mice = strcmp(T_Fr.AAV, 'NPTX2');

violinplot([T_Fr.BR(gfp_mice); T_Fr.BR(nptx2_mice)], [ones(length(find((gfp_mice)==1)),1); 2*ones(length(find((nptx2_mice)==1)),1)], 'MarkerSize', 12, 'ViolinColor', [0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248]);
ylabel('Bursting Ratio');
xticklabels({'GFP', 'NPTX2'});
box off
ylim([0 1])
title('Running')
offsetAxes(gca);

set(fig, 'Renderer', 'painters');
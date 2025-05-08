fig = figure;
set(groot,'defaultAxesFontName', 'Arial');
set(groot,'defaultAxesFontSize', 12);
set(groot,'defaultAxesTickDir','out');
set(groot,'defaultAxesTickDirMode','manual');
set(groot,'defaultFigureColor','w');
set(groot,'defaultAxesTitleFontWeight','normal');
set(groot,'defaultAxesTickLength',[0.02 0.02]);

T_C = readtable('Figure S14.xlsx','Sheet','S14C');

subplot(4,6,6);
boxplot_2groups_aav(T_C.Exc_synapses, T_C.AAV, 0)
box off
ylim([0 200])
xticklabels({'L5/6'})
ylabel({'Excitatory synapses','(% of GFP)'})
lgd = legend('GFP','NPTX2','Location','southeast');

T_Dl = readtable('Figure 7.xlsx','Sheet','7D left');

subplot(4,6,7);
boxplot_mean2groups_aav(T_Dl, T_Dl.SpikeRate, 5)
ylim([0 3])
ylabel('Spikes/s (sqrt)')
title('Awake Rest/ Small Pupil')


T_Dr = readtable('Figure 7.xlsx','Sheet','7D right');

subplot(4,6,8);
boxplot_mean2groups_aav(T_Dr, T_Dr.SpikeRate, 5)
ylim([0 3])
title('Running')

T_El = readtable('Figure 7.xlsx','Sheet','7E left');

subplot(4,6,9);
boxplot_mean2groups_aav(T_El, T_El.SpikeRate, 5)
ylim([0 3])
ylabel('Spikes/s (sqrt)')
title('Awake Rest/ Small Pupil')

T_Er = readtable('Figure 7.xlsx','Sheet','7E right');

subplot(4,6,10);
boxplot_mean2groups_aav(T_Er, T_Er.SpikeRate, 5)
ylim([0 3])
title('Running')

T_Fl = readtable('Figure 7.xlsx','Sheet','7F left');

subplot(4,6,11);
boxplot_mean2groups_aav(T_Fl, T_Fl.BR, 0)
ylim([0 .4])
ylabel('Bursting Ratio')
title('Awake Rest/ Small Pupil')

T_Fr = readtable('Figure 7.xlsx','Sheet','7F right');

subplot(4,6,12);
boxplot_mean2groups_aav(T_Fr, T_Fr.BR, 0)
ylim([0 .4])
title('Running')

T_G = readtable('Figure S14.xlsx','Sheet','S14G');

gfp_mice = strcmp(T_G.AAV, 'GFP');
nptx2_mice = strcmp(T_G.AAV, 'NPTX2');

subplot(4,6,14);
violinplot([T_G.SpikeRate(gfp_mice); T_G.SpikeRate(nptx2_mice)], [ones(length(find((gfp_mice)==1)),1); 2*ones(length(find((nptx2_mice)==1)),1)], 'MarkerSize', 12, 'ViolinColor', [0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248]);
ylabel('Spikes/sec (sqrt)');
xticklabels({'GFP', 'NPTX2'});
box off
ylim([0 6.5])
title('Awake Rest/ Small Pupil')
offsetAxes(gca);

subplot(4,6,15);
boxplot_mean2groups_aav(T_G, T_G.SpikeRate, 5)
ylim([0 3])

T_H = readtable('Figure S14.xlsx','Sheet','S14H');

gfp_mice = strcmp(T_H.AAV, 'GFP');
nptx2_mice = strcmp(T_H.AAV, 'NPTX2');

subplot(4,6,16);
violinplot([T_H.SpikeRate(gfp_mice); T_H.SpikeRate(nptx2_mice)], [ones(length(find((gfp_mice)==1)),1); 2*ones(length(find((nptx2_mice)==1)),1)], 'MarkerSize', 12, 'ViolinColor', [0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248]);
ylabel('Spikes/sec (sqrt)');
xticklabels({'GFP', 'NPTX2'});
box off
ylim([0 12])
title('Running')
offsetAxes(gca);

subplot(4,6,17);
boxplot_mean2groups_aav(T_H, T_H.SpikeRate, 5)
ylim([0 3])

T_I = readtable('Figure S14.xlsx','Sheet','S14I');

gfp_mice = strcmp(T_I.AAV, 'GFP');
nptx2_mice = strcmp(T_I.AAV, 'NPTX2');

subplot(4,6,20);
violinplot([T_I.SpikeRate(gfp_mice); T_I.SpikeRate(nptx2_mice)], [ones(length(find((gfp_mice)==1)),1); 2*ones(length(find((nptx2_mice)==1)),1)], 'MarkerSize', 12, 'ViolinColor', [0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248]);
ylabel('Spikes/sec (sqrt)');
xticklabels({'GFP', 'NPTX2'});
box off
ylim([0 6.5])
title('Awake Rest/ Small Pupil')
offsetAxes(gca);

subplot(4,6,21);
boxplot_mean2groups_aav(T_I, T_I.SpikeRate, 5)
ylim([0 3])

T_J = readtable('Figure S14.xlsx','Sheet','S14J');

gfp_mice = strcmp(T_J.AAV, 'GFP');
nptx2_mice = strcmp(T_J.AAV, 'NPTX2');

subplot(4,6,22);
violinplot([T_J.SpikeRate(gfp_mice); T_J.SpikeRate(nptx2_mice)], [ones(length(find((gfp_mice)==1)),1); 2*ones(length(find((nptx2_mice)==1)),1)], 'MarkerSize', 12, 'ViolinColor', [0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248]);
ylabel('Spikes/sec (sqrt)');
xticklabels({'GFP', 'NPTX2'});
box off
ylim([0 10])
title('Running')
offsetAxes(gca);

subplot(4,6,23);
boxplot_mean2groups_aav(T_J, T_J.SpikeRate, 5)
ylim([0 3])

set(fig, 'Renderer', 'painters');
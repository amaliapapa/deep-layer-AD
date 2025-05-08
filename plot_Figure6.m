fig = figure;
set(groot,'defaultAxesFontName', 'Arial');
set(groot,'defaultAxesFontSize', 12);
set(groot,'defaultAxesTickDir','out');
set(groot,'defaultAxesTickDirMode','manual');
set(groot,'defaultFigureColor','w');
set(groot,'defaultAxesTitleFontWeight','normal');
set(groot,'defaultAxesTickLength',[0.02 0.02]);

T_B = readtable('Figure 6.xlsx','Sheet','6B');

subplot(1,3,1);
box_plot_gen(T_B.NPTX2_CaMKII, T_B.Genotype, T_B.Depth,0)
box off
ylim([0 25])
xticklabels({'L2/3','L5/6'})
ylabel({'NPTX2+/CaMKII+','colocalization intensity'})
%lgd = legend('WT','APP','Location','southeast');

T_D = readtable('Figure 6.xlsx','Sheet','6D');

subplot(1,3,2);
box_plot_gen(T_D.GluA4_PV, T_D.Genotype, T_D.Depth,0)
box off
ylim([0 150])
xticklabels({'L2/3','L5/6'})
ylabel({'GluA4+/PV+', 'colocalization intensity'})
%lgd = legend('WT','APP','Location','southeast');

T_F = readtable('Figure 6.xlsx','Sheet','6F');

subplot(1,3,3);
boxplot_2groups(T_F.Synape_inn_PV, T_F.Genotype, 0)
box off
ylim([0 12])
xticklabels({'L5/6'})
lgd = legend('WT','APP','Location','southeast');
ylabel({'Excitatory synapses', 'on PV+ soma'})


set(fig, 'Renderer', 'painters');
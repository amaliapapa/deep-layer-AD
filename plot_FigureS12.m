fig = figure;
set(groot,'defaultAxesFontName', 'Arial');
set(groot,'defaultAxesFontSize', 12);
set(groot,'defaultAxesTickDir','out');
set(groot,'defaultAxesTickDirMode','manual');
set(groot,'defaultFigureColor','w');
set(groot,'defaultAxesTitleFontWeight','normal');
set(groot,'defaultAxesTickLength',[0.02 0.02]);

T_C = readtable('Figure S12.xlsx','Sheet','S12C');

subplot(1,2,1);
box_plot_gen(T_C.GluA4_PV, T_C.Genotype, T_C.Depth,0)
box off
ylim([0 30])
xticklabels({'L2/3','L5/6'})
ylabel({'GluA4+/PV+','colocalization intensity'})
%lgd = legend('WT','APP','Location','southeast');

T_D = readtable('Figure S12.xlsx','Sheet','S12D');

subplot(1,2,2);
box_plot_gen(T_D.GluA4_NeuN, T_D.Genotype, T_D.Depth,0)
box off
ylim([0 30])
xticklabels({'L2/3','L5/6'})
ylabel({'GluA4+/NeuN+','colocalization intensity'})
lgd = legend('WT','APP/PS1','Location','southeast');


set(fig, 'Renderer', 'painters');
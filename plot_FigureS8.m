fig = figure;
set(groot,'defaultAxesFontName', 'Arial');
set(groot,'defaultAxesFontSize', 12);
set(groot,'defaultAxesTickDir','out');
set(groot,'defaultAxesTickDirMode','manual');
set(groot,'defaultFigureColor','w');
set(groot,'defaultAxesTitleFontWeight','normal');
set(groot,'defaultAxesTickLength',[0.02 0.02]);

T_C = readtable('Figure S8.xlsx','Sheet','S8C');

subplot(1,2,1);
box_plot_gen(T_C.NPTX2_GAD67, T_C.Genotype, T_C.Depth,0)
box off
ylim([0 20])
xticklabels({'L2/3','L5/6'})
ylabel({'NPTX2+/GAD67+/PV-','colocalization intensity'})
%lgd = legend('WT','APP','Location','southeast');

T_D = readtable('Figure S8.xlsx','Sheet','S8D');

subplot(1,2,2);
box_plot_gen(T_D.NPTX2_PV, T_D.Genotype, T_D.Depth,0)
box off
ylim([0 50])
xticklabels({'L2/3','L5/6'})
ylabel({'NPTX2+/PV+','colocalization intensity'})
lgd = legend('WT','APP/PS1','Location','southeast');


set(fig, 'Renderer', 'painters');
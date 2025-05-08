fig = figure;
set(groot,'defaultAxesFontName', 'Arial');
set(groot,'defaultAxesFontSize', 12);
set(groot,'defaultAxesTickDir','out');
set(groot,'defaultAxesTickDirMode','manual');
set(groot,'defaultFigureColor','w');
set(groot,'defaultAxesTitleFontWeight','normal');
set(groot,'defaultAxesTickLength',[0.02 0.02]);

T_C = readtable('Figure S9.xlsx','Sheet','S9C');

subplot(1,2,1);
box_plot_gen(T_C.cFos_NeuN, T_C.Genotype, T_C.Depth,0)
box off
ylim([0 40])
xticklabels({'L2/3','L5/6'})
ylabel({'cFos+/NeuN+','colocalization intensity'})
%lgd = legend('WT','APP','Location','southeast');

T_F = readtable('Figure S9.xlsx','Sheet','S9F');

subplot(1,2,2);
box_plot_gen(T_F.Arc_NeuN, T_F.Genotype, T_F.Depth,0)
box off
ylim([0 25])
xticklabels({'L2/3','L5/6'})
ylabel({'Arc+/NeuN+','colocalization intensity'})
lgd = legend('WT','APP/PS1','Location','southeast');


set(fig, 'Renderer', 'painters');
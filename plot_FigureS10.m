fig = figure;
set(groot,'defaultAxesFontName', 'Arial');
set(groot,'defaultAxesFontSize', 12);
set(groot,'defaultAxesTickDir','out');
set(groot,'defaultAxesTickDirMode','manual');
set(groot,'defaultFigureColor','w');
set(groot,'defaultAxesTitleFontWeight','normal');
set(groot,'defaultAxesTickLength',[0.02 0.02]);

T_E = readtable('Figure S10.xlsx','Sheet','S10E');

subplot(2,1,1);
box_plot_gen(T_E.CaMKII_GluA4, T_E.Genotype, T_E.Depth,0)
box off
ylim([0 20])
xticklabels({'L2/3','L5/6'})
ylabel({'CaMKII+/GluA4+','colocalization intensity'})
%lgd = legend('WT','APP','Location','southeast');

T_F = readtable('Figure S10.xlsx','Sheet','S10F');

subplot(2,1,2);
box_plot_gen(T_F.GluA4_GAD67, T_F.Genotype, T_F.Depth,0)
box off
ylim([0 70])
xticklabels({'L2/3','L5/6'})
ylabel({'GluA4+/PV-/GAD67+','colocalization intensity'})
lgd = legend('WT','APP/PS1','Location','southeast');


set(fig, 'Renderer', 'painters');
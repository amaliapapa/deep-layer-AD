fig = figure;
set(groot,'defaultAxesFontName', 'Arial');
set(groot,'defaultAxesFontSize', 12);
set(groot,'defaultAxesTickDir','out');
set(groot,'defaultAxesTickDirMode','manual');
set(groot,'defaultFigureColor','w');
set(groot,'defaultAxesTitleFontWeight','normal');
set(groot,'defaultAxesTickLength',[0.02 0.02]);

T_E = readtable('Figure S7.xlsx','Sheet','S7E');

subplot(1,4,1);
box_plot_gen(T_E.PV_cell_count, T_E.Genotype, T_E.Depth,0)
box off
ylim([0 7])
xticklabels({'L2/3','L5/6'})
ylabel('PV+ Cell Count')
lgd = legend('WT','APP/PS1','Location','southeast');

T_F = readtable('Figure S7.xlsx','Sheet','S7F');

subplot(1,4,2);
box_plot_gen(T_F.NeuN_cell_count, T_F.Genotype, T_F.Depth,0)
box off
ylim([20 55])
xticklabels({'L2/3','L5/6'})
ylabel('NeuN+ Cell Count')
lgd = legend('WT','APP/PS1','Location','southeast');

T_G = readtable('Figure S7.xlsx','Sheet','S7G');
T_G = T_G(strcmp(T_G.Genotype,'APP'),:);
subplot(1,4,3);
box_plot_gen_sex(T_G.CaMKII_NPTX2, T_G.Sex, T_G.Depth,0)
box off
ylim([0 30])
xticklabels({'L2/3','L5/6'})
ylabel({'NPTX2+/CaMKII+','colocalization intensity'})
lgd = legend('Female','Male','Location','southeast');

T_H = readtable('Figure S7.xlsx','Sheet','S7H');
T_H = T_H(strcmp(T_H.Genotype,'APP'),:);

subplot(1,4,4);
box_plot_gen_sex(T_H.GluA4_PV, T_H.Sex, T_H.Depth,0)
box off
ylim([0 150])
xticklabels({'L2/3','L5/6'})
ylabel({'GluA4+/PV+','colocalization intensity'})
lgd = legend('Female','Male','Location','southeast');

set(fig, 'Renderer', 'painters');
fig = figure;
set(groot,'defaultAxesFontName', 'Arial');
set(groot,'defaultAxesFontSize', 12);
set(groot,'defaultAxesTickDir','out');
set(groot,'defaultAxesTickDirMode','manual');
set(groot,'defaultFigureColor','w');
set(groot,'defaultAxesTitleFontWeight','normal');
set(groot,'defaultAxesTickLength',[0.02 0.02]);

T_D = readtable('Figure S13.xlsx','Sheet','S13D');

subplot(1,3,1);
boxplot_2groups(T_D.Synapse_inn_PV, T_D.Genotype, 0)
box off
ylim([5 30])
xticklabels({'L5/6'})
ylabel({'Excitatory synapses','on PV+ soma'})
%lgd = legend('WT','APP','Location','southeast');

T_E = readtable('Figure S13.xlsx','Sheet','S13E');

subplot(1,3,2);
boxplot_2groups(T_E.Synapse_inn_CaMKII, T_E.Genotype, 0)
box off
ylim([0 12])
xticklabels({'L5/6'})
ylabel({'Excitatory synapses','on CaMKII++ soma'})
%lgd = legend('WT','APP','Location','southeast');

T_F = readtable('Figure S13.xlsx','Sheet','S13F');

subplot(1,3,3);
boxplot_2groups(T_F.Excitatory_synapses, T_F.Genotype, 0)
box off
ylim([20 160])
xticklabels({'L5/6'})
ylabel({'Excitatory synapses','(% of WT)'})
lgd = legend('WT','APP/PS1','Location','southeast');

set(fig, 'Renderer', 'painters');
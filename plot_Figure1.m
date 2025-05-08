fig = figure;
set(groot,'defaultAxesFontName', 'Arial');
set(groot,'defaultAxesFontSize', 12);
set(groot,'defaultAxesTickDir','out');
set(groot,'defaultAxesTickDirMode','manual');
set(groot,'defaultFigureColor','w');
set(groot,'defaultAxesTitleFontWeight','normal');
set(groot,'defaultAxesTickLength',[0.02 0.02]);

T_A = readtable('Figure 1.xlsx','Sheet','1A');

subplot(4,4,1:2);
plot(T_A.Var5,'k')
hold on; plot(T_A.Var4+5*(ones(1,length(T_A.Var4))),'k')
hold on; plot(T_A.Var3+10*(ones(1,length(T_A.Var3))),'k')
hold on; plot(T_A.Var2+15*(ones(1,length(T_A.Var2))),'k')
hold on; plot(T_A.Var1+20*(ones(1,length(T_A.Var1))),'k')
yticks([0:5:20])
yticklabels({'5','4','3','2','1'})
title('WT (3 mo)')
box off

T_C = readtable('Figure 1.xlsx','Sheet','1C');

subplot(4,4,3:4);
plot(T_C.Var5,'k')
hold on; plot(T_C.Var4+5*(ones(1,length(T_C.Var4))),'k')
hold on; plot(T_C.Var3+10*(ones(1,length(T_C.Var3))),'k')
hold on; plot(T_C.Var2+15*(ones(1,length(T_C.Var2))),'k')
hold on; plot(T_C.Var1+20*(ones(1,length(T_C.Var1))),'k')
yticks([0:5:20])
yticklabels({'5','4','3','2','1'})
title('APP/PS1 (3 mo')
box off

T_B = readtable('Figure 1.xlsx','Sheet','1B');

subplot(4,4,5:6);
plot(T_B.Var5,'k')
hold on; plot(T_B.Var4+5*(ones(1,length(T_B.Var4))),'k')
hold on; plot(T_B.Var3+10*(ones(1,length(T_B.Var3))),'k')
hold on; plot(T_B.Var2+15*(ones(1,length(T_B.Var2))),'k')
hold on; plot(T_B.Var1+20*(ones(1,length(T_B.Var1))),'k')
yticks([0:5:20])
yticklabels({'5','4','3','2','1'})
box off

T_D = readtable('Figure 1.xlsx','Sheet','1D');

subplot(4,4,7:8);
plot(T_D.Var5,'k')
hold on; plot(T_D.Var4+5*(ones(1,length(T_D.Var4))),'k')
hold on; plot(T_D.Var3+10*(ones(1,length(T_D.Var3))),'k')
hold on; plot(T_D.Var2+15*(ones(1,length(T_D.Var2))),'k')
hold on; plot(T_D.Var1+20*(ones(1,length(T_D.Var1))),'k')
yticks([0:5:20])
yticklabels({'5','4','3','2','1'})
box off

T_E = readtable('Figure 1.xlsx','Sheet','1E');

subplot(4,4,9);
b = bar(T_E.Frequency,T_E.WT_L2_3,'FaceColor','flat');
b.CData(1,:) = [0 0.4470 0.7410];
b.CData(2:8,:) = repmat([0.5 0.5 0.5],7,1);
b.CData(9:end,:) = repmat([0.8500 0.3250 0.0980],12,1);
ylabel('Percentage of cells')
title('WT, L2/3')
box off

subplot(4,4,10);
b = bar(T_E.Frequency,T_E.APP_PS1_L2_3,'FaceColor','flat');
b.CData(1,:) = [0 0.4470 0.7410];
b.CData(2:8,:) = repmat([0.5 0.5 0.5],7,1);
b.CData(9:end,:) = repmat([0.8500 0.3250 0.0980],12,1);
title('APP/PS1, L2/3')
box off

subplot(4,4,13);
b = bar(T_E.Frequency,T_E.WT_L5,'FaceColor','flat');
b.CData(1,:) = [0 0.4470 0.7410];
b.CData(2:8,:) = repmat([0.5 0.5 0.5],7,1);
b.CData(9:end,:) = repmat([0.8500 0.3250 0.0980],12,1);
xlabel('Frequency (Ca^{2+}-transients/min')
title('WT, L5')
box off

subplot(4,4,14);
b = bar(T_E.Frequency,T_E.APP_PS1_L5,'FaceColor','flat');
b.CData(1,:) = [0 0.4470 0.7410];
b.CData(2:8,:) = repmat([0.5 0.5 0.5],7,1);
b.CData(9:end,:) = repmat([0.8500 0.3250 0.0980],12,1);
title('APP/PS1, L5')
box off

T_F = readtable('Figure 1.xlsx','Sheet','1F');

subplot(4,4,[11:12,15:16])
box_plot_gen(T_F.Frequency, T_F.Genotype, T_F.Depth,0)
box off
ylim([0 3.5])
xticklabels({'L2/3','L5'})
ylabel('Frequency (Ca^{2+}-transients/min')
lgd = legend('WT','APP','Location','southeast');

set(fig, 'Renderer', 'painters');
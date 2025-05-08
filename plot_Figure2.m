fig = figure;
set(groot,'defaultAxesFontName', 'Arial');
set(groot,'defaultAxesFontSize', 12);
set(groot,'defaultAxesTickDir','out');
set(groot,'defaultAxesTickDirMode','manual');
set(groot,'defaultFigureColor','w');
set(groot,'defaultAxesTitleFontWeight','normal');
set(groot,'defaultAxesTickLength',[0.02 0.02]);

T_A = readtable('Figure 2.xlsx','Sheet','2A');

subplot(2,4,1);
plot(T_A.Var6(2:end),'k')
hold on; plot(T_A.Var5(2:end)+5*(ones(1,length(T_A.Var5(2:end)))),'k')
hold on; plot(T_A.Var4(2:end)+10*(ones(1,length(T_A.Var4(2:end)))),'k')
hold on; plot(T_A.Var3(2:end)+15*(ones(1,length(T_A.Var3(2:end)))),'k')
hold on; plot(T_A.Var2(2:end)+20*(ones(1,length(T_A.Var2(2:end)))),'k')
title('WT, L5 (3 mo)')
box off

subplot(2,4,2);
plot(T_A.Var13(2:end),'k')
hold on; plot(T_A.Var12(2:end)+5*(ones(1,length(T_A.Var12(2:end)))),'k')
hold on; plot(T_A.Var11(2:end)+10*(ones(1,length(T_A.Var11(2:end)))),'k')
hold on; plot(T_A.Var10(2:end)+15*(ones(1,length(T_A.Var10(2:end)))),'k')
hold on; plot(T_A.Var9(2:end)+20*(ones(1,length(T_A.Var9(2:end)))),'k')
title('APP/PS1, L5 (3 mo)')
box off

subplot(2,4,3);
plot(T_A.Var20(2:end),'k')
hold on; plot(T_A.Var19(2:end)+5*(ones(1,length(T_A.Var19(2:end)))),'k')
hold on; plot(T_A.Var18(2:end)+10*(ones(1,length(T_A.Var18(2:end)))),'k')
hold on; plot(T_A.Var17(2:end)+15*(ones(1,length(T_A.Var17(2:end)))),'k')
hold on; plot(T_A.Var16(2:end)+20*(ones(1,length(T_A.Var16(2:end)))),'k')
title('\itApp^{NL-G-F}\rm, L5 (3 mo)')
box off

T_B = readtable('Figure 2.xlsx','Sheet','2B');

subplot(2,4,5);
box_plot_gen(T_B.Percentage, T_B.Genotype, T_B.Depth,0)
box off
ylim([0 50])
xticklabels({'L2/3','L5'})
ylabel('Prolonged transients (%)')
%lgd = legend('WT','APP','Location','southeast');

subplot(2,4,6);
box_plot_gen(T_B.Duration, T_B.Genotype, T_B.Depth,0)
box off
ylim([30 80])
xticklabels({'L2/3','L5'})
ylabel('Mean duration (s)')
lgd = legend('WT','APP/PS1','Location','southeast');

T_C = readtable('Figure 2.xlsx','Sheet','2C');

subplot(2,4,7);
box_plot_gen(T_C.Percentage, T_C.Genotype, T_C.Depth,0)
box off
ylim([0 30])
xticklabels({'L2/3','L5'})
ylabel('Prolonged transients (%)')
%lgd = legend('WT','APP','Location','southeast');

subplot(2,4,8);
box_plot_gen(T_C.Duration, T_C.Genotype, T_C.Depth,0)
box off
ylim([30 80])
xticklabels({'L2/3','L5'})
ylabel('Mean duration (s)')
lgd = legend('WT','\itApp^{NL-G-F}\rm','Location','southeast');

set(fig, 'Renderer', 'painters');
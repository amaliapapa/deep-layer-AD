fig = figure;
set(groot,'defaultAxesFontName', 'Arial');
set(groot,'defaultAxesFontSize', 12);
set(groot,'defaultAxesTickDir','out');
set(groot,'defaultAxesTickDirMode','manual');
set(groot,'defaultFigureColor','w');
set(groot,'defaultAxesTitleFontWeight','normal');
set(groot,'defaultAxesTickLength',[0.02 0.02]);

T_D = readtable('Figure 4.xlsx','Sheet','4D');

% Sup layers
wt_inds_sup_inh = strcmp(T_D.Genotype, 'WT') & strcmp(T_D.Area,'crtx_sup');
app_inds_sup_inh = strcmp(T_D.Genotype, 'APP') & strcmp(T_D.Area,'crtx_sup');

% Deep layers
wt_inds_deep_inh = strcmp(T_D.Genotype, 'WT') & strcmp(T_D.Area,'crtx_deep');
app_inds_deep_inh = strcmp(T_D.Genotype, 'APP') & strcmp(T_D.Area,'crtx_deep');

subplot(3,4,4); 
violinplot([T_D.OSI(wt_inds_sup_inh); T_D.OSI(app_inds_sup_inh); T_D.OSI(wt_inds_deep_inh); T_D.OSI(app_inds_deep_inh)], [ones(length(find((wt_inds_sup_inh)==1)),1); 2*ones(length(find((app_inds_sup_inh)==1)),1); 3*ones(length(find((wt_inds_deep_inh)==1)),1); 4*ones(length(find((app_inds_deep_inh)==1)),1)], 'MarkerSize', 12, 'ViolinColor', [0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248; 0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248]);
ylabel('OSI');
xticklabels({'WT', 'APP/PS1', 'WT', 'APP/PS1'});
box off
ylim([0 1])
offsetAxes(gca);
title('FSIs - Orientation Selectivity')


T_G = readtable('Figure 4.xlsx','Sheet','4G');

% Sup layers
wt_inds_sup_inh = strcmp(T_G.Genotype, 'WT') & strcmp(T_G.Area,'crtx_sup');
app_inds_sup_inh = strcmp(T_G.Genotype, 'APP') & strcmp(T_G.Area,'crtx_sup');

% Deep layers
wt_inds_deep_inh = strcmp(T_G.Genotype, 'WT') & strcmp(T_G.Area,'crtx_deep');
app_inds_deep_inh = strcmp(T_G.Genotype, 'APP') & strcmp(T_G.Area,'crtx_deep');

subplot(3,4,8); 
violinplot([T_G.DSI(wt_inds_sup_inh); T_G.DSI(app_inds_sup_inh); T_G.DSI(wt_inds_deep_inh); T_G.DSI(app_inds_deep_inh)], [ones(length(find((wt_inds_sup_inh)==1)),1); 2*ones(length(find((app_inds_sup_inh)==1)),1); 3*ones(length(find((wt_inds_deep_inh)==1)),1); 4*ones(length(find((app_inds_deep_inh)==1)),1)], 'MarkerSize', 12, 'ViolinColor', [0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248; 0.1494, 0.0496, 0.2492; 0.8149, 0.4748, 0.6248]);
ylabel('DSI');
xticklabels({'WT', 'APP/PS1', 'WT', 'APP/PS1'});
box off
ylim([0 1])
offsetAxes(gca);
title('FSIs - Direction Selectivity')

T_H = readtable('Figure 4.xlsx','Sheet','4H');

% Sup layers
wt_inds_sup_inh = strcmp(T_H.Genotype, 'WT') & strcmp(T_H.Area,'crtx_sup');
app_inds_sup_inh = strcmp(T_H.Genotype, 'APP') & strcmp(T_H.Area,'crtx_sup');

% Deep layers
wt_inds_deep_inh = strcmp(T_H.Genotype, 'WT') & strcmp(T_H.Area,'crtx_deep');
app_inds_deep_inh = strcmp(T_H.Genotype, 'APP') & strcmp(T_H.Area,'crtx_deep');

subplot(3,4,9)
plot(T_H.SpikeRate(wt_inds_sup_inh),T_H.OSI(wt_inds_sup_inh),'square', 'MarkerFaceColor', [0.1494, 0.0496, 0.2492])
hold on; plot(T_H.SpikeRate(app_inds_sup_inh),T_H.OSI(app_inds_sup_inh),'diamond', 'MarkerFaceColor', [ 0.8149, 0.4748, 0.6248])
c1 = polyfit(T_H.SpikeRate(wt_inds_sup_inh),T_H.OSI(wt_inds_sup_inh),1);
y_est1 = polyval(c1,T_H.SpikeRate(wt_inds_sup_inh));
hold on; plot(T_H.SpikeRate(wt_inds_sup_inh), y_est1, 'color', [0.1494, 0.0496, 0.2492],'LineWidth',2)
c2 = polyfit(T_H.SpikeRate(app_inds_sup_inh),T_H.OSI(app_inds_sup_inh),1);
y_est2 = polyval(c2,T_H.SpikeRate(app_inds_sup_inh));
hold on; plot(T_H.SpikeRate(app_inds_sup_inh), y_est2, 'color', [ 0.8149, 0.4748, 0.6248],'LineWidth',2)
[r1, p1] = corr(T_H.SpikeRate(wt_inds_sup_inh),T_H.OSI(wt_inds_sup_inh));
[r2, p2] = corr(T_H.SpikeRate(app_inds_sup_inh),T_H.OSI(app_inds_sup_inh));

%text(3, 1.1,1,['y = ',num2str(round(c1(1),3)), 'x + ',num2str(round(c1(2),3))], 'FontSize', 8, 'color',[0.1494, 0.0496, 0.2492])
%text(3, 0.9,1,['y = ',num2str(round(c2(1),3)), 'x + ',num2str(round(c2(2),3))], 'FontSize', 8, 'color',[ 0.8149, 0.4748, 0.6248])
text(3, 1,1,['r = ',num2str(round(r1,3)), 'p = ',num2str(round(p1,3))], 'FontSize', 8, 'color',[0.1494, 0.0496, 0.2492])
text(3, 0.8,1,['r = ',num2str(round(r2,3)), 'p = ',num2str(round(p2,3))], 'FontSize', 8, 'color',[ 0.8149, 0.4748, 0.6248])

xlabel('Spontaneous firing (spikes/s log')
ylabel('OSI')
title('L2-4')
axis([-0.3 4 0 1.1])
box off
offsetAxes(gca);


subplot(3,4,10)
plot(T_H.SpikeRate(wt_inds_deep_inh),T_H.OSI(wt_inds_deep_inh),'square', 'MarkerFaceColor', [0.1494, 0.0496, 0.2492])
hold on; plot(T_H.SpikeRate(app_inds_deep_inh),T_H.OSI(app_inds_deep_inh),'diamond', 'MarkerFaceColor', [ 0.8149, 0.4748, 0.6248])
c1 = polyfit(T_H.SpikeRate(wt_inds_deep_inh),T_H.OSI(wt_inds_deep_inh),1);
y_est1 = polyval(c1,T_H.SpikeRate(wt_inds_deep_inh));
hold on; plot(T_H.SpikeRate(wt_inds_deep_inh), y_est1, 'color', [0.1494, 0.0496, 0.2492],'LineWidth',2)
c2 = polyfit(T_H.SpikeRate(app_inds_deep_inh),T_H.OSI(app_inds_deep_inh),1);
y_est2 = polyval(c2,T_H.SpikeRate(app_inds_deep_inh));
hold on; plot(T_H.SpikeRate(app_inds_deep_inh), y_est2, 'color', [ 0.8149, 0.4748, 0.6248],'LineWidth',2)

[r1, p1] = corr(T_H.SpikeRate(wt_inds_deep_inh),T_H.OSI(wt_inds_deep_inh));
[r2, p2] = corr(T_H.SpikeRate(app_inds_deep_inh),T_H.OSI(app_inds_deep_inh));

%text(3, 1.1,1,['y = ',num2str(round(c1(1),3)), 'x + ',num2str(round(c1(2),3))], 'FontSize', 8, 'color',[0.1494, 0.0496, 0.2492])
%text(3, 0.9,1,['y = ',num2str(round(c2(1),3)), 'x + ',num2str(round(c2(2),3))], 'FontSize', 8, 'color',[ 0.8149, 0.4748, 0.6248])
text(3, 1,1,['r = ',num2str(round(r1,3)), 'p = ',num2str(round(p1,3))], 'FontSize', 8, 'color',[0.1494, 0.0496, 0.2492])
text(3, 0.8,1,['r = ',num2str(round(r2,3)), 'p = ',num2str(round(p2,3))], 'FontSize', 8, 'color',[ 0.8149, 0.4748, 0.6248])

xlabel('Spontaneous firing (spikes/s log')
ylabel('OSI')
title('L5/6')
axis([-0.3 4 0 1.1])
box off
offsetAxes(gca);


T_I = readtable('Figure 4.xlsx','Sheet','4I');

% Sup layers
wt_inds_sup_inh = strcmp(T_I.Genotype, 'WT') & strcmp(T_I.Area,'crtx_sup');
app_inds_sup_inh = strcmp(T_I.Genotype, 'APP') & strcmp(T_I.Area,'crtx_sup');

% Deep layers
wt_inds_deep_inh = strcmp(T_I.Genotype, 'WT') & strcmp(T_I.Area,'crtx_deep');
app_inds_deep_inh = strcmp(T_I.Genotype, 'APP') & strcmp(T_I.Area,'crtx_deep');

subplot(3,4,11)
plot(T_I.SpikeRate(wt_inds_sup_inh),T_I.DSI(wt_inds_sup_inh),'square', 'MarkerFaceColor', [0.1494, 0.0496, 0.2492])
hold on; plot(T_I.SpikeRate(app_inds_sup_inh),T_I.DSI(app_inds_sup_inh),'diamond', 'MarkerFaceColor', [ 0.8149, 0.4748, 0.6248])
c1 = polyfit(T_I.SpikeRate(wt_inds_sup_inh),T_I.DSI(wt_inds_sup_inh),1);
y_est1 = polyval(c1,T_I.SpikeRate(wt_inds_sup_inh));
hold on; plot(T_I.SpikeRate(wt_inds_sup_inh), y_est1, 'color', [0.1494, 0.0496, 0.2492],'LineWidth',2)
c2 = polyfit(T_I.SpikeRate(app_inds_sup_inh),T_I.DSI(app_inds_sup_inh),1);
y_est2 = polyval(c2,T_I.SpikeRate(app_inds_sup_inh));
hold on; plot(T_I.SpikeRate(app_inds_sup_inh), y_est2, 'color', [ 0.8149, 0.4748, 0.6248],'LineWidth',2)

[r1, p1] = corr(T_I.SpikeRate(wt_inds_sup_inh),T_I.DSI(wt_inds_sup_inh));
[r2, p2] = corr(T_I.SpikeRate(app_inds_sup_inh),T_I.DSI(app_inds_sup_inh));

%text(3, 1.1,1,['y = ',num2str(round(c1(1),3)), 'x + ',num2str(round(c1(2),3))], 'FontSize', 8, 'color',[0.1494, 0.0496, 0.2492])
%text(3, 0.9,1,['y = ',num2str(round(c2(1),3)), 'x + ',num2str(round(c2(2),3))], 'FontSize', 8, 'color',[ 0.8149, 0.4748, 0.6248])
text(3, 1,1,['r = ',num2str(round(r1,3)), 'p = ',num2str(round(p1,3))], 'FontSize', 8, 'color',[0.1494, 0.0496, 0.2492])
text(3, 0.8,1,['r = ',num2str(round(r2,3)), 'p = ',num2str(round(p2,3))], 'FontSize', 8, 'color',[ 0.8149, 0.4748, 0.6248])

xlabel('Spontaneous firing (spikes/s log')
ylabel('DSI')
title('L2-4')
axis([-0.3 4 -0.2 1.1])
box off
offsetAxes(gca);


subplot(3,4,12)
plot(T_I.SpikeRate(wt_inds_deep_inh),T_I.DSI(wt_inds_deep_inh),'square', 'MarkerFaceColor', [0.1494, 0.0496, 0.2492])
hold on; plot(T_I.SpikeRate(app_inds_deep_inh),T_I.DSI(app_inds_deep_inh),'diamond', 'MarkerFaceColor', [ 0.8149, 0.4748, 0.6248])
c1 = polyfit(T_I.SpikeRate(wt_inds_deep_inh),T_I.DSI(wt_inds_deep_inh),1);
y_est1 = polyval(c1,T_I.SpikeRate(wt_inds_deep_inh));
hold on; plot(T_I.SpikeRate(wt_inds_deep_inh), y_est1, 'color', [0.1494, 0.0496, 0.2492],'LineWidth',2)
c2 = polyfit(T_I.SpikeRate(app_inds_deep_inh),T_I.DSI(app_inds_deep_inh),1);
y_est2 = polyval(c2,T_I.SpikeRate(app_inds_deep_inh));
hold on; plot(T_I.SpikeRate(app_inds_deep_inh), y_est2, 'color', [ 0.8149, 0.4748, 0.6248],'LineWidth',2)

[r1, p1] = corr(T_I.SpikeRate(wt_inds_deep_inh),T_I.DSI(wt_inds_deep_inh));
[r2, p2] = corr(T_I.SpikeRate(app_inds_deep_inh),T_I.DSI(app_inds_deep_inh));

%text(3, 1.1,1,['y = ',num2str(round(c1(1),3)), 'x + ',num2str(round(c1(2),3))], 'FontSize', 8, 'color',[0.1494, 0.0496, 0.2492])
%text(3, 0.9,1,['y = ',num2str(round(c2(1),3)), 'x + ',num2str(round(c2(2),3))], 'FontSize', 8, 'color',[ 0.8149, 0.4748, 0.6248])
text(3, 1,1,['r = ',num2str(round(r1,3)), 'p = ',num2str(round(p1,3))], 'FontSize', 8, 'color',[0.1494, 0.0496, 0.2492])
text(3, 0.8,1,['r = ',num2str(round(r2,3)), 'p = ',num2str(round(p2,3))], 'FontSize', 8, 'color',[ 0.8149, 0.4748, 0.6248])

xlabel('Spontaneous firing (spikes/s log')
ylabel('DSI')
title('L5/6')
axis([-0.3 4 -0.2 1.1])
box off
offsetAxes(gca);

set(fig, 'Renderer', 'painters');
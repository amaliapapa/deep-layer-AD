function box_plot_gen_sex(y, sex, depth,perm)

% Default figure settings
% fig = figure;
% set(groot,'defaultAxesFontName', 'Arial');
% set(groot,'defaultAxesFontSize', 12);
% set(groot,'defaultAxesTickDir','out');
% set(groot,'defaultAxesTickDirMode','manual');
% set(groot,'defaultFigureColor','w');
% set(groot,'defaultAxesTitleFontWeight','normal');
% set(groot,'defaultAxesTickLength',[0.02 0.02]);

load('actonS.mat');

male_sup = find(strcmp(sex, 'M') & strcmp(depth, 'Sup'));
male_deep = find(strcmp(sex, 'M') & strcmp(depth, 'Deep'));
female_sup = find(strcmp(sex, 'F') & strcmp(depth, 'Sup'));
female_deep = find(strcmp(sex, 'F') & strcmp(depth, 'Deep'));

sex = categorical(sex);
depth = categorical(depth);


if perm~=1
  [~,~,stats] = anovan(y,{sex depth},"Model","interaction", ...
  "Varnames",["sex","area"], 'display', 'on');
  [results,~,~,gnames] = multcompare(stats,"Dimension",[1 2], 'display', 'on', 'CriticalValueType', 'tukey-kramer');
end


%fig = figure;
ordereddepth = reordercats(depth,{'Sup', 'Deep'});
orderedgen = reordercats(sex,{'F', 'M'});
b = boxchart(ordereddepth,y,'GroupByColor',orderedgen);
b(1).BoxFaceColor =  actonS(1,:);
b(1).BoxFaceAlpha =  0.5;
b(2).BoxFaceColor =  actonS(7,:);
b(2).BoxFaceAlpha =  0.5;
hold on; s = swarmchart(0.75*ones(1,length(female_sup)),y(female_sup),20,actonS(1:15:length(female_sup)*15,:),'filled');
s.XJitterWidth = 0.1;
hold on; s = swarmchart(1.25*ones(1,length(male_sup)),y(male_sup),20,actonS(1:10:length(male_sup)*10,:),'filled');
s.XJitterWidth = 0.1;
hold on; s = swarmchart(1.75*ones(1,length(female_deep)),y(female_deep),20,actonS(1:15:length(female_deep)*15,:),'filled');
s.XJitterWidth = 0.1;
hold on; s = swarmchart(2.25*ones(1,length(male_deep)),y(male_deep),20,actonS(1:10:length(male_deep)*10,:),'filled');
s.XJitterWidth = 0.1;
%[h p] = ttest2(mean_cond(wtmice,1),mean_cond(appmice,1))
%ylim([20 100])
if max(y)<=5
    offsetp = 1;
elseif max(y)>5 && max(y)<25
    offsetp = 2;
elseif max(y)>=25
    offsetp = 10;
end
text(0.8,max(y)+offsetp,['P = ',num2str(round(results(6,6),3))]);
text(1.8,max(y)+offsetp,['P = ',num2str(round(results(1,6),3))]);


if perm==1
    P = nan(100000,length(female_sup)+length(male_sup));
    y_sup = y([female_sup,male_sup]);
    for i=1:100000
        pr = randperm(length(female_sup)+length(male_sup));
        P(i,:) = y_sup(pr);
    end
    nd = [];
    for i=1:size(P,1)
        nd(i) = nanmean(P(i,1:length(female_sup)))-nanmean(P(i,length(female_sup)+1:length(female_sup)+length(male_sup)));
    end
    av = nanmean(y_sup(1:length(female_sup)))-nanmean(y_sup(length(female_sup)+1:length(female_sup)+length(male_sup)));
    av = abs(av);
    p = length(find(nd>=av))./length(nd);

    text(0.8,max(y),['P = ',num2str(round(p,3))]);

    P = nan(100000,length(female_deep)+length(male_deep));
    y_deep = y([female_deep,male_deep]);
    for i=1:100000
        pr = randperm(length(female_deep)+length(male_deep));
        P(i,:) = y_deep(pr);
    end
    nd = [];
    for i=1:size(P,1)
        nd(i) = nanmean(P(i,1:length(female_deep)))-nanmean(P(i,length(female_deep)+1:length(female_deep)+length(male_deep)));
    end
    av = nanmean(y_deep(1:length(female_deep)))-nanmean(y_deep(length(female_deep)+1:length(female_deep)+length(male_deep)));
    av = abs(av);
    p = length(find(nd>=av))./length(nd);

    text(1.8,max(y),['P = ',num2str(round(p,3))]);
end

%set(fig, 'Renderer', 'painters');
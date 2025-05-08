function boxplot_2groups(y, genotype, perm)

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

appmice = find(strcmp(genotype, 'APP'));
wtmice = find(strcmp(genotype, 'WT'));

genotype = categorical(genotype);


orderedgen = reordercats(genotype,{'WT', 'APP'});
b = boxchart(y,'GroupByColor',orderedgen);
b(1).BoxFaceColor =  actonS(1,:);
b(1).BoxFaceAlpha =  0.5;
b(2).BoxFaceColor =  actonS(7,:);
b(2).BoxFaceAlpha =  0.5;
hold on; s = swarmchart(0.75*ones(1,length(wtmice)),y(wtmice,1),20,actonS(1:15:length(wtmice)*15,:),'filled');
s.XJitterWidth = 0.15;
hold on; s = swarmchart(1.25*ones(1,length(appmice)),y(appmice,1),20,actonS(1:10:length(appmice)*10,:),'filled');
s.XJitterWidth = 0.15;

if perm==1

    P = nan(30000,size(y,1));
    for i=1:30000
        pr = randperm(size(y,1));
        P(i,:) = y(pr,1);
    end
    nd = [];
    for i=1:size(P,1)
        nd(i) = nanmean(P(i,wtmice))-nanmean(P(i,appmice));
    end
    av = nanmean(y(wtmice,1))-nanmean(y(appmice,1));
    av = abs(av);
    p = length(find(nd>=av))./length(nd);

else
    [h, p, ci, stats] = ttest2(y(wtmice),y(appmice))
end

if max(y)<=5
    offsetp = 1;
elseif max(y)>5 & max(y)<15
    offsetp = 2;
elseif max(y)>=15;
    offsetp = 5;
end
text(0.8,max(max(y))+offsetp,['P = ',num2str(round(p,3))]);


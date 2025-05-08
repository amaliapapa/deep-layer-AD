function boxplot_2groups_aav(y, aav, perm)

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

nptx2mice = find(strcmp(aav, 'NPTX2'));
gfpmice = find(strcmp(aav, 'GFP'));

aav = categorical(aav);


orderedgen = reordercats(aav,{'GFP', 'NPTX2'});
b = boxchart(y,'GroupByColor',orderedgen);
b(1).BoxFaceColor =  actonS(1,:);
b(1).BoxFaceAlpha =  0.5;
b(2).BoxFaceColor =  actonS(7,:);
b(2).BoxFaceAlpha =  0.5;
hold on; s = swarmchart(0.75*ones(1,length(gfpmice)),y(gfpmice,1),20,actonS(1:15:length(gfpmice)*15,:),'filled');
s.XJitterWidth = 0.15;
hold on; s = swarmchart(1.25*ones(1,length(nptx2mice)),y(nptx2mice,1),20,actonS(1:10:length(nptx2mice)*10,:),'filled');
s.XJitterWidth = 0.15;

if perm==1

    P = nan(30000,size(y,1));
    for i=1:30000
        pr = randperm(size(y,1));
        P(i,:) = y(pr,1);
    end
    nd = [];
    for i=1:size(P,1)
        nd(i) = nanmean(P(i,gfpmice))-nanmean(P(i,nptx2mice));
    end
    av = nanmean(y(gfpmice,1))-nanmean(y(nptx2mice,1));
    av = abs(av);
    p = length(find(nd>=av))./length(nd);

else
    [h, p, ci, stats] = ttest2(y(gfpmice),y(nptx2mice))
end

if max(y)<=5
    offsetp = 1;
elseif max(y)>5 & max(y)<15
    offsetp = 2;
elseif max(y)>=15;
    offsetp = 10;
end
text(0.8,max(max(y))+offsetp,['P = ',num2str(round(p,3))]);


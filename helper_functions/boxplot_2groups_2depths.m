function boxplot_2groups_2depths(Tb, cond, trim, bonf)


load('actonS.mat');

unique_ids = unique(Tb.ID);
% ID = cellfun(@(x) x(1:9), Tb.ID, 'UniformOutput', false);
% unique_ids = unique(ID);
% Tb.ID = ID;
% Tb.date_an = [];

k=0;
mean_cond = [];
genotype = {};
for i=1:length(unique_ids)
    this_an = find(strcmp(Tb.ID, unique_ids(i)) );

    k=k+1;
    this_an = find(strcmp(Tb.ID, unique_ids(i)) & strcmp(Tb.Area,'crtx_sup'));
    mean_cond(k,1) = trimmean(cond(this_an),trim);
    this_an = find(strcmp(Tb.ID, unique_ids(i)) & strcmp(Tb.Area,'crtx_deep'));
    mean_cond(k,2) = trimmean(cond(this_an),trim);
    if ~isempty(this_an)
        genotype(k) = unique(Tb.Genotype(this_an));
    else
        genotype(k) = {'APP'};
    end

end


appmice = find(strcmp(genotype, 'APP'));
wtmice = find(strcmp(genotype, 'WT'));

y = reshape(mean_cond,1,[]);
genotype = categorical([genotype, genotype]);
depth = categorical([repmat({'Superficial'},1,size(mean_cond,1)), repmat({'Deep'},1,size(mean_cond,1))]);

ordereddepth = reordercats(depth,{'Superficial', 'Deep'});
orderedgen = reordercats(genotype,{'WT', 'APP'});
b = boxchart(ordereddepth,y,'GroupByColor',orderedgen);
b(1).BoxFaceColor =  actonS(1,:);
b(1).BoxFaceAlpha =  0.5;
b(2).BoxFaceColor =  actonS(7,:);
b(2).BoxFaceAlpha =  0.5;
 hold on; s = swarmchart(0.75*ones(1,length(wtmice)),mean_cond(wtmice,1),20,actonS(1:15:length(wtmice)*15,:),'filled');
 s.XJitterWidth = 0.1;
 hold on; s = swarmchart(1.25*ones(1,length(appmice)),mean_cond(appmice,1),20,actonS(1:5:length(appmice)*5,:),'filled');
 s.XJitterWidth = 0.1;
 hold on; s = swarmchart(1.75*ones(1,length(wtmice)),mean_cond(wtmice,2),20,actonS(1:15:length(wtmice)*15,:),'filled');
 s.XJitterWidth = 0.1;
 hold on; s = swarmchart(2.25*ones(1,length(appmice)),mean_cond(appmice,2),20,actonS(1:5:length(appmice)*5,:),'filled');
 s.XJitterWidth = 0.1;

P = nan(30000,size(mean_cond,1));
for i=1:30000
    pr = randperm(size(mean_cond,1));
    P(i,:) = mean_cond(pr,1);
end
nd = [];
for i=1:size(P,1)
    nd(i) = nanmean(P(i,wtmice))-nanmean(P(i,appmice));
end
av = nanmean(mean_cond(wtmice,1))-nanmean(mean_cond(appmice,1));
av = abs(av);
p = length(find(nd>=av))./length(nd);

if bonf==1
    p = p*2; % Bonferroni correction
    if p>1
        p=1;
    end
end

if max(max(mean_cond))<=1
    offsetp = 0.1;
elseif max(max(mean_cond))>1 & max(max(mean_cond))<5
    offsetp = 0.5;
elseif max(max(mean_cond))>5 & max(max(mean_cond))<15
    offsetp = 1;
elseif max(max(mean_cond))>=15
    offsetp = 10;
end
text(0.8,max(max(mean_cond))+offsetp,['P = ',num2str(round(p,3))]);

P = nan(30000,size(mean_cond,1));
for i=1:30000
    pr = randperm(size(mean_cond,1));
    P(i,:) = mean_cond(pr,2);
end
nd = [];
for i=1:size(P,1)
    nd(i) = nanmean(P(i,wtmice))-nanmean(P(i,appmice));
end
av = nanmean(mean_cond(wtmice,2))-nanmean(mean_cond(appmice,2));
av = abs(av);
p = length(find(nd>=av))./length(nd);

if bonf==1
    p = p*2; % Bonferroni correction
    if p>1
        p=1;
    end
end

text(1.8,max(max(mean_cond))+offsetp,['P = ',num2str(round(p,3))]);

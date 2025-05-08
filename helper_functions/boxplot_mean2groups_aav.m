function boxplot_mean2groups_aav(Tb, cond, trim)


load('actonS.mat');


ID = cellfun(@(x) x(1:9), Tb.ID, 'UniformOutput', false);
unique_ids = unique(ID);
Tb.ID = ID;

k=0;
mean_cond = [];
aav = {};
for i=1:length(unique_ids)
    k=k+1;
    this_an = find(strcmp(Tb.ID, unique_ids(i)));
    mean_cond(k,1) = trimmean(cond(this_an),trim);
    
    if ~isempty(this_an)
        aav(k) = unique(Tb.AAV(this_an));
    else
        aav(k) = {'NPTX2'};
    end

end


nptx2mice = find(strcmp(aav, 'NPTX2'));
gfpmice = find(strcmp(aav, 'GFP'));

aav = categorical(aav);

y = reshape(mean_cond,1,[]);

orderedgen = reordercats(aav,{'GFP', 'NPTX2'});
b = boxchart(y,'GroupByColor',orderedgen);
b(1).BoxFaceColor =  actonS(1,:);
b(1).BoxFaceAlpha =  0.5;
b(2).BoxFaceColor =  actonS(7,:);
b(2).BoxFaceAlpha =  0.5;
 hold on; s = swarmchart(0.75*ones(1,length(gfpmice)),mean_cond(gfpmice,1),20,actonS(1:15:length(gfpmice)*15,:),'filled');
 s.XJitterWidth = 0.1;
 hold on; s = swarmchart(1.25*ones(1,length(nptx2mice)),mean_cond(nptx2mice,1),20,actonS(1:5:length(nptx2mice)*5,:),'filled');
 s.XJitterWidth = 0.1;

P = nan(30000,size(mean_cond,1));
for i=1:30000
    pr = randperm(size(mean_cond,1));
    P(i,:) = mean_cond(pr,1);
end
nd = [];
for i=1:size(P,1)
    nd(i) = nanmean(P(i,gfpmice))-nanmean(P(i,nptx2mice));
end
av = nanmean(mean_cond(gfpmice,1))-nanmean(mean_cond(nptx2mice,1));
av = abs(av);
p = length(find(nd>=av))./length(nd);


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



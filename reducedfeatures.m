%load '../newfeatures/genfeatures_reduced_xy2only.mat';
load '../homework4/genfeatures.mat';

disp('now extracting reduced features - removed xy response');

for i=1:715
    %a = features{i}(:,1:3);
    b = features{i}(:,1:36);
    %c = horzcat(a,b);
    %features{i} = c;
    features{i} = b;
end

%max feature calculation
imageno = 1;
a = 0;
maxfcell = [];
j = size(adjcell);
for i = 1:j
    k = size(adjcell{i});
    
    for o = 1:k
    nbspix = adjcell{i}(o);
    a = a+features{imageno}(nbspix,:);
    end
    p = find(a(1,:) == max(a));
    maxfcell(i) = p;
end

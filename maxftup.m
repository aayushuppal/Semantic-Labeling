% max feature weight allocation - fth image i=numspix spixels
load '../homework4/genfeatures.mat';

for f = 1:numel(imsegs)
    disp(numel(imsegs)-f);
    numspix = imsegs(f).nsegs;
   
    for i = 1:numspix
        
    az = zeros(1,44);  
      adjcell = find(imsegs(f).adjmat(i,:)== 1);
        
            kw = numel(adjcell);
            
            for op = 1:kw
            nbspix = adjcell(op);
            az = az+features{f}(nbspix,:);
            end
            
            pw = find(az(1,:) == max(az));
            features{f}(i,pw) = (features{f}(i,pw))*2; % 0 values not handled yet
    end
    
end

%end
  
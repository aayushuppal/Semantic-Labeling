%load '../homework4/genfeatures.mat';


for imageno=1:1
    adjmat = image_data(imageno).adjmat;
    spixno = size(adjmat);
    spixno = spixno(1,1);
    adjcell = cell(spixno,1);
    
    for i=1:spixno
    adjcell{i} = find(adjmat(i,:)== 1);
    end
    
end

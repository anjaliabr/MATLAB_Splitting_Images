function splitdata(D, F)

if ~exist(fullfile(D,F),'dir')
    mkdir(fullfile(D,F))
end

for k = 1:2
    Z = fullfile(D,F,sprintf('rawdata',k));
    Y = fullfile(D,F,sprintf('gt',k));
    if ~exist(Z,'dir')
        mkdir(Z)
    end
    if ~exist(Y,'dir')
        mkdir(Y)
    end
end

splitdata('/Users/pavelqaladize/Desktop/data', 'testing')
splitdata('/Users/pavelqaladize/Desktop/data', 'training')
splitdata('/Users/pavelqaladize/Desktop/data', 'validation')
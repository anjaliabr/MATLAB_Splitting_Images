function splitdata(F)

D = %pathname

% checks if there is a folder in that directory
if ~exist(fullfile(D,F),'dir')
    mkdir(fullfile(D,F))
end

% creates two folders 'rawdata' and 'gt' with the folder
for k = 1:2
    Z = fullfile(D,F,sprintf('rawdata',k));
    Y = fullfile(D,F,sprintf('gt',k));
    
    % checks if the 'rawdata' and 'gt' folders are present in the current folder
    if ~exist(Z,'dir')
        mkdir(Z)
    end
    if ~exist(Y,'dir')
        mkdir(Y)
    end
end

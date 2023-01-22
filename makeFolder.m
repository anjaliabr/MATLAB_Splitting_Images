% Function that creates a folder as well as creates two subfolders named
% 'gt' and 'rawdata'.
% Inputs
% F - foldername
% D - directory path name

function makeFolder(D, F)

    % checks if there is any existing files to avoid overwriting
    if ~exist(fullfile(D,F),'dir')
        mkdir(fullfile(D,F))
    end

    % to create the subfolders within the folder specified
    for k = 1:2
        Z = fullfile(D,F,sprintf('rawdata',k)); % create folder for rawdata dataset
        Y = fullfile(D,F,sprintf('gt',k)); % create folder for gt dataset
        
         % to check if both subfolders exists
        if ~exist(Z,'dir')
            mkdir(Z)
        end
        if ~exist(Y,'dir')
            mkdir(Y)
        end
    end
end

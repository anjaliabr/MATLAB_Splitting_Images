
folderNames = {'Training', 'Validation', 'Testing'}; % folder names
d = %directory path name;

% creating folders using the folderNames
for i = 1:length(folderNames)
    makeFolder(d, folderNames{i});
end

% Using rawdata directory in collecting the random numbers
f = fullfile(d,'rawdata');

perctges = [0.7 0.2 0.1]; % the percentages can be user-defined
[training, validation, testing] = randnumbers(f, perctges);

% moving the samples in the three folders
for i = 1:length(folderNames)
    if i == 1
        splitData(d, folderNames{i}, training);
    elseif i == 2
        splitData(d, folderNames{i}, validation);
    else
        splitData(d, folderNames{i}, testing);
    end
end

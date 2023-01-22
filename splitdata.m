% This function deals with spliting the images into its respective folders.
% Inputs
% D - directory path name
% folderName - name of the folder
% values - values with respect to the folder

function splitData(D, folderName, values)

    % creates a list for rawData and gt .tiff files
    rawData = readTIFFfiles(D, 'rawdata');
    gt = readTIFFfiles(D, 'gt')

    for i = 1:length(values)
        % copying images to the rawdata folder
        imgname = fullfile(fullfile(D,'rawdata'),rawData(i).name);
        directory = fullfile(fullfile(D, folderName),'rawdata');
        copyfile(imgname, directory);

        % copying images to the gt folder
        imgname = fullfile(fullfile(D,'gt'),gt(i).name);
        directory = fullfile(fullfile(D, folderName),'gt');
        copyfile(imgname, directory);
    end
end



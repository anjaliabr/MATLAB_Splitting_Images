function splitData(d, name, values)

    % creates a list for rawData and gt .tiff files
    rawData = readTIFFfiles(d, 'rawdata');
    gt = readTIFFfiles(d, 'gt')

    for i = 1:length(values)
        % copying images to the rawdata folder
        imgname = fullfile(fullfile(d,'rawdata'),rawData(i).name);
        directory = fullfile(fullfile(d,name),'rawdata');
        copyfile(imgname, directory);

        % copying images to the gt folder
        imgname = fullfile(fullfile(d,'gt'),gt(i).name);
        directory = fullfile(fullfile(d,name),'gt');
        copyfile(imgname, directory);
    end
end



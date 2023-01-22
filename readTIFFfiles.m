% A function that reads a list of names of tiff files in one folder
% Input
% D - directory path name
% F - folder name

function S = readTIFFfiles(D,F)
    S = dir(fullfile(fullfile(D,F),'*.tif')); % lists folder contents with the extension .tif
    [fid, msg] = fopen(fullfile(D, 'files.txt'), 'w'); % creates a text file to display the names of .tif files
    assert(fid>=3, msg); % checking if fid is not less than 3. sends a message if it does
    fprintf(fid, '%s\n', S.name); % print the list of files
    fclose(fid);
end

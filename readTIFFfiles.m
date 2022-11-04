% Write a program that reads a list of names of tiff files in one folder

d = '/Users/anjalia/Desktop/UofM/FALL 2022/ENGR 4901/WEEK 8/Images_TIFF'; % pathname 
S = dir(fullfile(d,'*.tif')); % lists folder contents with the extension .tif
[fid, msg] = fopen(fullfile(d, 'files.txt'), 'w'); % creates a text file to display the names of .tif files
assert(fid>=3, msg); % checking if fid is not less than 3. sends a message if it does
fprintf(fid, '%s\n', S.name); % print the list of files
fclose(fid);

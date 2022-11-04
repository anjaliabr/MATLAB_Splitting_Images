% Write a program that reads a list of names of tiff files in one folder

d = ''; % pathname 
S = dir(fullfile(d,'*.tif')); % lists folder contents with the extension .tif
[fid, msg] = fopen(fullfile(d, 'files.txt'), 'w'); % creates a text file to display the names of .tif files
assert(fid>=3, msg); % checking if fid is not less than 3. sends a message if it does
fprintf(fid, '%s\n', S.name); % print the list of files
fclose(fid);
variable = fileread(fullfile(d,'files.txt'))

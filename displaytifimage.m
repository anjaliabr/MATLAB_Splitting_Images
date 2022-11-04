% Write a program that reads Tiff images and display it

%change path name below if needed
d = '/Users/anjalia/Desktop/UofM/FALL 2022/ENGR 4901/CODE/displayfile/Images_TIFF';  
TiffList = dir(fullfile(d,'*.tif')); % lists folder contents with the extension .tif

% using a for loop to display the images
for i = 1:numel(TiffList)
    file = TiffList(i).name; % store the file name of image
    t = Tiff(fullfile(d,file),'r'); % creates a TIFF object
    imageData = read(t); % reads the object

    % displays the image
    figure, imshow(imageData);
    close(t); % closes the object
end


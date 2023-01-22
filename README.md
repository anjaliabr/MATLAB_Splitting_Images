# Splitting Data in MATLAB

## Project Description:
Using MATLAB, we are splitting .tif images into three sets; test, train and validation. 

## Install and Run:

## Methods:

- ```readTIFFiles(D, F)```: reads a list of names of .tif files in a folder.
- ```displayTIFimage(D)```: reads .tif images and display it.
- ```makeFolder(D, F)```: creates folders for training, validation and testing and creates two other sub-folders named as 'gt' and 'rawdata' within the three folders. 
- ```randnumbers(D, perctges)```: based on percentages for train, test and validation, the function will select random numbers out of the total number of files.
- ```splitdata(D, folderName, values)```: moves the .tif images to appropriate folder according to the random numbers selected.

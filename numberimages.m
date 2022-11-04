g = '/Users/pavelqaladize/Desktop/VIP/data/gt';
a = dir(fullfile(g, '*.tif'));
numImgs = numel(a);
perctges = [0.7 0.2 0.1];
[testing, validation, training] = randnumbersVIP(numImgs, perctges)

[testing, validation, training] = randnumbersVIP(16, perctges)

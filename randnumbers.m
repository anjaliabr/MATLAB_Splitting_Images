
function [training, validation, testing] = randnumbers(numImgs, perctges)

  % calculates the amount for training, validation, and testing based on n
  numtraining = round(numImgs*perctges(1));
  numvalidation = round(numImgs*perctges(2));
  numtesting = round(numImgs*perctges(3));

  % chooses randomly selected numbers for testing and validation
  rng('shuffle')
  testing = randperm(numImgs, numtesting);

  % assigns the validation with numbers not chosen from testing
  UnselectedfromTesting = setdiff(1:numImgs, testing);
  validation = randsample(UnselectedfromTesting, numvalidation);

  % Assigns the training variable with the remaining unselected values from
  % testing and validation
  TestplusVali = [testing validation];
  training = setdiff(1:numImgs, TestplusVali);
end 


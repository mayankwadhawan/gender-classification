%Code Developed by Mayank Wadhawan
%UFID - 59148122
%Pattern Recognition

clear all;
close all;
totalFiles = 156;
imageLocation = 'D:\UF\pattern\Mayank\TrainingClassifiers\MaleTraining\gallery';
patternname = '*.jpg';
listofimages = dir(fullfile(imageLocation,patternname));
h = fspecial('gaussian');
for n = 1:totalFiles
    image = rgb2gray(imread(fullfile(imageLocation,listofimages(n).name)));
    image = imfilter(image, h);
    image = imresize(image,[120 120], 'bicubic');
    [featVect, hogVis] = extractHOGFeatures(image);
    extractedInfo(n,:) = featVect;
end
save MaleTrainFeatures.mat extractedInfo


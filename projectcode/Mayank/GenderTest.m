%Code Developed by Mayank Wadhawan
%UFID - 59148122
%Pattern Recognition
clear all;
close all;
clc;

load genderClassifierlda.mat;
load genderClassifierknn.mat;
load genderClassifiernb.mat;
load genderClassifiersvm.mat;
load genderClassifiertree.mat;
load genderClassifierecoc.mat;

%use variable ldaClass for LDA Classification
%use variable knnClass for KNN Classification
%use variable nbClass for Naive Bayes Classification
%use variable svmClass for SVM Classification
%use variable treeClass for Decision Tree Classification


%change total files to 40 to check for all images
%change total files to 1 for testing one image
totalFiles = 1;

imageLocation = 'D:\UF\pattern\Mayank\TrainingClassifiers\Testing\Female';
patternname = '*.jpg';
listofimages = dir(fullfile(imageLocation,patternname));
h = fspecial('gaussian');
for n = 1:totalFiles
    image = rgb2gray(imread(fullfile(imageLocation,listofimages(n).name)));
    image = imfilter(image, h);
    image = imresize(image,[120 120], 'bicubic');
    [featVect, hogVis] = extractHOGFeatures(image);
    extractedInfo(n,:) = featVect;
   
    
    %uncomment below 2 lines for testing all images
    %display(n)
    %display( predict(ldaClass,extractedInfo))
    
    
    %comment below 6 lines for testing all images
    outcome = predict(ldaClass,extractedInfo)
    location = [0.4 0.19 0.1 0.1];
    figure;
    imshow(image);
    title('LDA');
    annotation('textbox',location,'String', outcome);
    
    
    %below lines are for looking at HOG
    %figure
    %imshow(image);
    %hold on;
    %plot(hogVis);
    %title('HOG');
    %display( predict(ldaClass,extractedInfo));
    %display(n);
end

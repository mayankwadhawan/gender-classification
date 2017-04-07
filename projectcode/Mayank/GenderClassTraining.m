%Code Developed by Mayank Wadhawan
%UFID - 59148122
%Pattern Recognition
clear all;
clc;
load featuresCombined.mat;
load labelsSaved.mat;
disp('Training lda classifier');
ldaClass = fitcdiscr(allExtractedFeatures,SavedLabel);
disp('Training knn classifier');
knnClass = fitcknn(allExtractedFeatures,SavedLabel);
disp('Training Naive Bayes classifier');
nbClass = fitNaiveBayes(allExtractedFeatures,SavedLabel);
disp('Training svm classifier');    
svmClass = fitcsvm(allExtractedFeatures,SavedLabel);
disp('Training tree classifier');
treeClass = fitctree(allExtractedFeatures,SavedLabel);
save genderClassifierlda.mat ldaClass;
save genderClassifierknn.mat knnClass;
save genderClassifiernb.mat nbClass;
save genderClassifiersvm.mat svmClass;
save genderClassifiertree.mat treeClass;
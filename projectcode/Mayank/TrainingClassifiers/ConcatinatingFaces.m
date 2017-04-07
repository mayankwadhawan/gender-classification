%Code Developed by Mayank Wadhawan
%UFID - 59148122
%Pattern Recognition
load MaleTrainFeatures.mat
allExtractedFeatures = extractedInfo;
clear extractedInfo;
load FemaleTrainFeatures.mat;
allExtractedFeatures(157:312,:) = extractedInfo;
clear extractedInfo;

save featuresCombined.mat allExtractedFeatures;
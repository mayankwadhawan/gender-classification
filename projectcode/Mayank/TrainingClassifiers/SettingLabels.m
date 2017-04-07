%Code Developed by Mayank Wadhawan
%UFID - 59148122
%Pattern Recognition
for i = 1:156
    SavedLabel{i,1} = 'MALE';
end
for i = 157:312
    SavedLabel{i,1} = 'FEMALE';
end
save labelsSaved.mat SavedLabel
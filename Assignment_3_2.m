clc;
clear all;

load X_test.mat;
load X_train.mat;
load y_train.mat;
load y_test.mat;


Class = knnclassify(X_test,X_train,y_train,7,'euclidean', 'nearest');
transpose_y_test = transpose(y_test);
index = Class == transpose_y_test;


t=sum(index);

[rows cols]=size(transpose_y_test);


accuracy= (t/rows) * 99
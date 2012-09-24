function  logisticregression()
clear ; close all; clc

input_layer_size  = 784;  % 20x20 Input Images of Digits
num_labels = 10;          % 10 labels, from 1 to 10   
                          % (note that we have mapped "0" to label 10)

load('train.mat');
load('test.mat');

m = size(Xin, 1);

%fixed value for lambda
lambda = 0.1;
%do multiclass or one vs all logistic regression
all_theta = oneVsAll(Xin, yin, num_labels, lambda);

%predict the value of the test set using parameters all_theta
pred = predictOneVsAll(all_theta, Xtest);
save('results.mat',"pred");
fprintf('\ndone \n');


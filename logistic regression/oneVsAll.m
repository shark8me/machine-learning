function [all_theta] = oneVsAll(X, y, num_labels, lambda)

% Some useful variables
m = size(X, 1);
n = size(X, 2);

% You need to return the following variables correctly 
all_theta = zeros(num_labels, n + 1);

% Add ones to the X data matrix
X = [ones(m, 1) X];

for i=1:num_labels
     initial_theta = zeros(n + 1, 1);
     options = optimset('GradObj', 'on', 'MaxIter', 50);
%     % Run fmincg to obtain the optimal theta
%     % This function will return theta and the cost 
     all_theta(i,:) = ...
         fmincg (@(t)(lrCostFunction(t, X, (y == i), lambda)), ...
                 initial_theta, options);
endfor
end

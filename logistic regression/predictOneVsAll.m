function p = predictOneVsAll(all_theta, X)

m = size(X, 1);
num_labels = size(all_theta, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);
% Add ones to the X data matrix
X = [ones(m, 1) X];

[dummy,p]=max(X*all_theta' ,[],2);     
end

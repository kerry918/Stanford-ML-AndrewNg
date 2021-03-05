function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1); % 5000
num_labels = size(Theta2, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%

% Add ones to the X data matrix
X = [ones(m, 1) X]; % 5000 * 401

% layer 1
theta1 = sigmoid(X * Theta1');  % 5000 * 401 by 401 * 25 --> 5000*25
theta1 = [ones(m, 1), theta1];  % 5000 * 26

% layer 2
theta2 = sigmoid(theta1 * Theta2');  % 5000 * 26 by 26 * 10 --> 5000 * 10
% Get the max of the row 
[~, p] = max(theta2, [], 2); 

% =========================================================================


end

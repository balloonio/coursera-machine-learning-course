function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

y_pred = X * theta;
m = length(y)
J = 1/(2*m) * sum( (y_pred - y) .^ 2);

% NOTE
% cost = given theta, sum of (y_label_value - prediction based on Y) ^ 2
% But remember to /= m to get the mean of that sum from all the samples
% This function is otherwise called the "Squared error function", or "Mean squared error".
% The mean is halved (1/2) as a convenience for the computation of the gradient descent,
% as the derivative term of the square function will cancel out the 1/2 term.
% see https://www.coursera.org/learn/machine-learning/supplement/nhzyF/cost-function


% =========================================================================

end

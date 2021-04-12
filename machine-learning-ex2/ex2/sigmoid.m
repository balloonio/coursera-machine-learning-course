function g = sigmoid(z)
%SIGMOID Compute sigmoid function
%   g = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly
g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).

[row, col] = size(z);
g = ones(row, col) ./ (1 + exp(-z));

% NOTE
% The intuition of sigmoid function is to map a value z that is along
% any value on the R axis, to a range of 0 to 1. Where as when z == 0,
% the sigmoid gives 0.5 This is a good property as it maps to probability

% =============================================================

end

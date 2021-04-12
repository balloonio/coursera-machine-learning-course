function out = mapFeature(X1, X2)
% MAPFEATURE Feature mapping function to polynomial features
%
%   MAPFEATURE(X1, X2) maps the two input features
%   to quadratic features used in the regularization exercise.
%
%   Returns a new feature array with more features, comprising of
%   X1, X2, X1.^2, X2.^2, X1*X2, X1*X2.^2, etc..
%
%   Inputs X1, X2 must be the same size
%

% NOTE
% for a degree of 6, the size is 28, which is
%   1 (a col of ones) +
%   2 (either x1 to the power of 1 or 0 aka x2 to the power of 0 or 1) +
%   3 (either x1 to the power of 2 or 1 or 0 aka x2 to the power of 0 or 1 or 2) +
%   4 + 5 + 6 + 7

degree = 6;
out = ones(size(X1(:,1)));
for i = 1:degree
    for j = 0:i
        out(:, end+1) = (X1.^(i-j)).*(X2.^j);
    end
end

end

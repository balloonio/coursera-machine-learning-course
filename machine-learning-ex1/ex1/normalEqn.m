function [theta] = normalEqn(X, y)
%NORMALEQN Computes the closed-form solution to linear regression
%   NORMALEQN(X,y) computes the closed-form solution to linear
%   regression using the normal equations.

theta = zeros(size(X, 2), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the code to compute the closed form solution
%               to linear regression and put the result in theta.
%

% ---------------------- Sample Solution ----------------------
theta = pinv(X' * X) * X' * y

% NOTE
% Best article on the proof of this equation and matric calculus
% https://eli.thegreenplace.net/2014/derivation-of-the-normal-equation-for-linear-regression/
% and
% https://eli.thegreenplace.net/2015/the-normal-equation-and-matrix-calculus/


% -------------------------------------------------------------


% ============================================================

end

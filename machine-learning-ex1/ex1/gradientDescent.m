function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta.
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
m = length(y);
theta_0 = theta(1);
theta_1 = theta(2);

theta_0 -= alpha / m * sum( (X*theta - y) * 1);
theta_1 -= alpha / m * ( (X*theta - y)' * X(:,2));
theta = [theta_0; theta_1];

% NOTE:
% Gradient descent is given the current theta, based on the partial derivative
% of cost function J towards theta0 theta1 repectively, calculate what is the next closer theta
% dJ/dTheta0 and dJ/dTheta1 is essentially the gradient aka slope of the line.
% Because we are looking for local minimum, you can think of the equation as
% newX = X - dY/dX * tinyStep (when positive slope, we want to move X to left aka decrease,
% when negative slope, we want to move X to the right aka increase)
% and here X is the Theta and Y is the cost function J, and tinyStep is alpha
% However, remember this equation is not the acurate calculus by any means, it is a method of approximate
% When the slope is big, X will shoot to left or right with a big margin
# When the slope is small, X will shoot very smalk margin
# Eventually when the slope is 0 or close to 0, X will converge or nearly converge

    % ============================================================

    % Save the cost J in every iteration
    J_history(iter) = computeCost(X, y, theta);

end

end

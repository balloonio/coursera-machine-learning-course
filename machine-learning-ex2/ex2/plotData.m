function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%

m = size(y, 1);
admit = X(y(:,1) == 1, :)
no_admit = X(y(:,1) == 0, :)

plot(admit(:,1), admit(:,2), 'k+')

plot(no_admit(:,1), no_admit(:,2),'ro')


% =========================================================================



hold off;

end

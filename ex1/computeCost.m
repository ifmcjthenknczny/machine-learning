function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

i = 1;
J1 = 0;

while i <= m
    J1 = J1+((theta(1)+theta(2)*X(i,2))-y(i))^2;
    i = i+1;
end

J = J1/(2*m);



% =========================================================================

end

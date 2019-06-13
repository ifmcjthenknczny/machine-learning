function J = computeCostMulti(X, y, theta)
%COMPUTECOSTMULTI Compute cost for linear regression with multiple variables
%   J = COMPUTECOSTMULTI(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

i = 1;
J1 = 0;

while i <= m
    J1 = J1+(theta(1)+theta(2)*X(i,2)+theta(3)*X(i,3)-y(i))^2;
    i = i+1;
end

J = J1/(2*m);





% =========================================================================

end

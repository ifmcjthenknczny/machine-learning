function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters
    sum1 = 0;
    sum2 = 0;
    i = 1;
    while i <= m
        sum1 = sum1+((theta(1)+theta(2)*X(i,2))-y(i))*X(i,1);
        sum2 = sum2+((theta(1)+theta(2)*X(i,2))-y(i))*X(i,2);
        i = i+1;
    end
    theta(1) = theta(1)-(alpha/m)*sum1;
    theta(2) = theta(2)-(alpha/m)*sum2;
    J_history(iter) = computeCost(X, y, theta);
end
end

function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters
    sum1 = 0;
    sum2 = 0;
    sum3 = 0;
    i = 1;
    while i <= m
        sum1 = sum1+((theta(1)+theta(2)*X(i,2)+theta(3)*X(i,3))-y(i))*X(i,1);
        sum2 = sum2+((theta(1)+theta(2)*X(i,2)+theta(3)*X(i,3))-y(i))*X(i,2);
        sum3 = sum3+((theta(1)+theta(2)*X(i,2)+theta(3)*X(i,3))-y(i))*X(i,3);
        i = i+1;
    end
    theta(1) = theta(1)-(alpha/m)*sum1;
    theta(2) = theta(2)-(alpha/m)*sum2;
    theta(3) = theta(3)-(alpha/m)*sum3;

    % Save the cost J in every iteration    
    J_history(iter) = computeCostMulti(X, y, theta);

end

end

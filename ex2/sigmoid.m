function g = sigmoid(z)
%SIGMOID Compute sigmoid function
%   g = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z));
element = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).

while element < size(z,1)*size(z,2)
    g(element+1) = 1/(1+exp(-z(element+1)));
    element = element + 1;
end


% =============================================================

end

function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

theta_zero = theta(1);
theta_one = theta(2);

for iter = 1:num_iters
  delta_zero = (1/m)*sum((X*theta)-y)
  theta_zero = theta_zero - (alpha*delta_zero)
  
  delta_one = (1/m)*sum(((X*theta)-y).*X(:,2))
  theta_one = theta_one - (alpha*delta_one)
  
  theta = [theta_zero;theta_one]
  
    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %







    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end

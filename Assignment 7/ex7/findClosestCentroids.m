function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);
euc_distances = zeros(size(X,1), 3);


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%

for i = 1:size(X,1)
  for j = 1:size(centroids,1)
    x_i = X(i,1);
    y_i = X(i,2);
    centroid_x = centroids(j,1);
    centroid_y = centroids(j,2);
    
  
    sub_x = x_i - centroid_x;
    sub_y = y_i - centroid_y;
  
    euc_dist = sqrt((sub_x).^2 + (sub_y).^2);
    
    euc_distances(i,j) = euc_dist;
  
  endfor
endfor

for k = 1:size(euc_distances)
  [val, iter] = min(euc_distances(k,:));
  idx(k) = iter;
endfor



% =============================================================

end


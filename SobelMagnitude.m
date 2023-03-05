function edge_mag = SobelMagnitude(img)

% Function written by Eleni Christoforidou in MATLAB R2022b.

% This function computes the magnitude of Sobel filter responses
% for the input image 'img' using the horizontal and vertical Sobel filters.
% The function outputs 'edge_mag', the magnitude of the filter responses.

% Define horizontal and vertical Sobel filters
sobel_x = [-1 0 1; -2 0 2; -1 0 1];
sobel_y = [1 2 1; 0 0 0; -1 -2 -1];

% Apply Sobel filters to the image using convolution
grad_x = conv2(img, sobel_x, 'same');
grad_y = conv2(img, sobel_y, 'same');

% Compute the magnitude of the filter responses
edge_mag = sqrt(grad_x.^2 + grad_y.^2);
end

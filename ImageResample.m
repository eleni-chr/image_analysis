function img_resample = ImageResample(img, dim)

% Function written by Eleni Christoforidou in MATLAB R2022b.

% This function takes as input an [MxN] image matrix img that we would like
% to resample and a [2x1] vector dim, which contains the desired size of 
% the resampled image. The function outputs img_resamp, the resampled 
% version of image with datatype double and dimensions dim.

% Get the current size of the image
[M, N] = size(img);

% Create coordinate matrices for the original image
[x, y] = meshgrid(1:N, 1:M);

% Define the new coordinates for the resampled image
[X, Y] = meshgrid(linspace(1, N, dim(2)), linspace(1, M, dim(1)));

% Resample the image using bilinear interpolation
img_resample = interp2(x, y, double(img), X, Y, 'linear');

% Convert the output to double datatype
img_resample = double(img_resample);
end
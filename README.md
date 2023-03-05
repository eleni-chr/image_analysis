# image_analysis
Various functions for image analysis, such as resampling, filtering, and segmentation.

Functions written by Eleni Christoforidou in MATLAB R2022b.

ImageResample: This function takes as input an [MxN] image matrix img that we would like to resample and a [2x1] vector dim, which contains the desired size of the resampled image. The function outputs img_resamp, the resampled version of image with datatype double and dimensions dim.

SobelMagnitude: This function computes the magnitude of Sobel filter responses for the input image 'img' using the horizontal and vertical Sobel filters. The function outputs 'edge_mag', the magnitude of the filter responses.

OtsuThreshold: This function takes as input an [MxN] uint8 image matrix img, and outputs the Otsu thresholded binary image in  [MxN] matrix msk, as well as the integer threshold thrsh used to make msk.

% Hemal Ketan Dave Biomedical Image Processing Project 1

%% Part A
% clear all the workspace & figures.
clc;
close all;
clear all;
% read the image which is given.
ImageA =  imread('BME7112_Data_File_1.tif'); 
% select the object
ImageB = imcrop(ImageA,[150 82 85 34]);
% max and minimum gray scale value
max_ImageA = max(max(ImageA));
min_ImageA = min(min(ImageA));
% size Of image A
[height_a,width_a] = size(ImageA);
% size of ImageB
[height_b,width_b] = size(ImageB);
% save Image B
imwrite(ImageB,'BME7112_HW1A_DAVE_ImageB.png');
%finding the bit depth
i = imfinfo('BME7112_Data_File_1.tif');
 % plot the image.
subplot(1,2,1)
imshow(ImageA);
title({'Image A';[' Image Size = ',num2str(width_a),' x ',num2str(height_a),' (Width x Height)'];['Maximum Grayscale = ',num2str(max_ImageA)];['Minimum Grayscale = ',num2str(min_ImageA)]});
% displaying the cropped image.
subplot(1,2,2)
imshow(ImageB);
title({'Image B';[' Image Size = ',num2str(width_b),' x ',num2str(height_b),' (Width x Height)']});


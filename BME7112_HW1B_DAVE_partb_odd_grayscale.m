clc;
clear all;
close all;
a = 35*3;% enter the gray scale level also change the variable j
%% intialisation of matrix:
% data = matrix(50,100);
matrix_zeros = zeros(round(a/2),a);% matrix of zeros
Matrix_ones = ones(round(a/2),round(a/2));% matrix of onces
matrix_zeros(1:round(a/2),(round(a/2)):a) = Matrix_ones;% combining both matrix
data = matrix_zeros;
%% doing grey scale:

max_gray = 1;
min_gray = 0;

[x,y] = size(data);%finding size of matrix
j = 35;% gray scale level
    count = -1;
   
for i = 1:x
    count = count + 1;
average = (max_gray+min_gray)/j;% find the average value according to the gray scale.
data(i,1:round(y/j+1)) = 0;
for k = 1:j-1
    Average = k*average;
data(i,round(k*y/j+1):(round(((k+1)*y)/j+1)-1)) = Average;% adding each average value equally in the matrix.

end
data(i,:) = data(i,:)./max(data(i,:));%normalise the data
% data(i,:) = max_gray(data(i,:));
% data(i,:) = normalize(data(i,:));
% data(i,1:round(y/3)) = 0;
% data(i,round(y/3):round(2*y/3)) = average;
% data(i,round(2*y/3):round(3*y/3)) = 1;
end
% Max_data = max(data);
% data = data./Max_data;



%     for j =1:x
%         
%             average = (max+min)/2;
%             matrix_zeros(j,1:round(y/3)) = zeros(j,round(y/3));
%             matrix_zeros(j,round(y/3):round(2*y/3)) = average;
%             matrix_zeros(j,round(2*y/3):round(3*y/3)) = ones;
%             
%         end
% plot the image.
imshow(data);
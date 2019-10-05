clc;
clear all;
close all;
% no of gray scale level enter & also chnage this number on the j variable.
a = 28*10;
%% intialisation of matrix:
% data = matrix(50,100);
matrix_zeros = zeros(round(a/2),a);% making the matrix of zeros
Matrix_ones = ones(a/2,round(a/2));% making matrix of once
matrix_zeros(1:round(a/2),(round(a/2)+1):a) = Matrix_ones;% combine both matrix
data = matrix_zeros;
%% doing grey scale:
max_gray = 1;
min_gray = 0;
[x,y] = size(data);%finding size of matrix
j = 28 ;% no of gray scale level 
    count = -1;   
for i = 1:x
    count = count + 1;
average = (max_gray+min_gray)/j;% finding the average of the image accordinf to gray scale.
data(i,1:round(y/j+1)) = 0;
for k = 1:j-1
    Average = k*average;
data(i,round(k*y/j+1):(round(((k+1)*y)/j+1)-1)) = Average;% adding each gray scale average value.
end
data(i,:) = data(i,:)./max(data(i,:));% normalise the data so shuld be in the range of [0,1]
end
%     for j =1:x
%         
%             average = (max+min)/2;
%             matrix_zeros(j,1:round(y/3)) = zeros(j,round(y/3));
%             matrix_zeros(j,round(y/3):round(2*y/3)) = average;
%             matrix_zeros(j,round(2*y/3):round(3*y/3)) = ones;
%             
%         end    

%% Plot the grayscale matrix;

imshow(data);

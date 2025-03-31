clear, close all
% Task 1
I1 = imread('pout.tif');

% Task 2
I2 = imread('C:\Users\Voxel\Desktop\Signals\Lab1\PathImage\cat.jpg');
I3 = imread('ball.png');
imshow(I1);
figure;
imshow(I2);
figure;
imshow(I3);

% Task 3
whos I1;
whos I2;
whos I3;

% Task 4
imwrite(I1, "Save\I1.tif");
imwrite(I2, "Save\I2.jpg");
imwrite(I3, "Save\I3.png");

% Task 5
imhist(I1);
title("Histogram pout.tif");
figure;
imhist(I2);
title("Histogram cat.jpg");
figure;
imhist(I3);
title("Histogram ball.png");
figure;

% Task 6,7
img_j1 = imadjust(I1);
imshow(img_j1);
title("Контрастоване pout.tif");
figure;

% --------------------------------------------
R = I2(:,:,1);  
G = I2(:,:,2);  
B = I2(:,:,3);  

R_adjusted = imadjust(R);
G_adjusted = imadjust(G);
B_adjusted = imadjust(B);

img_j2 = cat(3, R_adjusted, G_adjusted, B_adjusted);
imshow(img_j2);
title("Контрастоване cat.jpg");
figure;

% --------------------------------------------
R = I3(:,:,1);  
G = I3(:,:,2);  
B = I3(:,:,3);  

R_adjusted = imadjust(R);
G_adjusted = imadjust(G);
B_adjusted = imadjust(B);

img_j3 = cat(3, R_adjusted, G_adjusted, B_adjusted);
imshow(img_j3);
title("Контрастоване ball.png");

% Task 8
img_j1_neg = imadjust(I1, [0,1], [1,0]);
imshow(img_j1_neg);
title("Негатив pout.tif");
figure;

% --------------------------------------------
R = I2(:,:,1);  
G = I2(:,:,2);  
B = I2(:,:,3);  

R_adjusted = imadjust(R, [0,1], [1,0]);
G_adjusted = imadjust(G, [0,1], [1,0]);
B_adjusted = imadjust(B, [0,1], [1,0]);

img_j2_neg = cat(3, R_adjusted, G_adjusted, B_adjusted);
imshow(img_j2_neg);
title("Негатив cat.jpg");
figure;

% --------------------------------------------
R = I3(:,:,1);  
G = I3(:,:,2);  
B = I3(:,:,3);  

R_adjusted = imadjust(R, [0,1], [1,0]);
G_adjusted = imadjust(G, [0,1], [1,0]);
B_adjusted = imadjust(B, [0,1], [1,0]);

img_j3_neg = cat(3, R_adjusted, G_adjusted, B_adjusted);
imshow(img_j3_neg);
title("Негатив ball.png");

% Task 9
help imadjust

clear;
close all;
f = imread('Images/I2.jpg');
f = rgb2gray(f);
imshow(f);
title('Вихідне зображення');

F = fft2(f); 
S=abs(F);
Fc= fftshift(S);
Slog=log(1+Fc);
figure
imshow(Slog, []);
title('Спектр вихідного зображення');

sigma=5;
[M,N] = size(f);
h = fspecial('gaussian', [M,N], sigma);
figure
imshow(250*h), 
title('Вікно фільтра')

H = fft2(h); 
SH=abs(H);
Shc= fftshift(SH);
Shlog=log(1+Shc);
figure
imshow(Shlog, []);
title('Частотна характеристика фільтра'); 

IF=F.*H;
SIF=abs(IF);
Sifc= fftshift(SIF); 
Sifclog=log(1+Sifc); 
figure
imshow(Sifclog, [ ]);
title('Спектр на виході фільтра');

FI = ifft2(IF); 
Fiabs=abs(FI);
Fiabsc= fftshift(Fiabs);
Filog=log(1+Fiabsc);
figure
imshow(Filog, []);
title('Зображення на виході фільтра');

f_filtered_spatial = imfilter(double(f), h, 'replicate');
figure
imshow(uint8(f_filtered_spatial)); 
title('Фільтрація у просторі');

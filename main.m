clc; clear; close all;
pauseTime = 5;

ImageName_1 = 'I1.jpg';
ImageName_2 = 'I2.jpg';
ImageName_3 = 'I3.jpg';
ImageName_4 = 'I4.jpg';

I = double(imread(ImageName_1));
I_2 = double(imread(ImageName_2));
I_3 = double(imread(ImageName_3));
I_4 = double(imread(ImageName_4));

%% Problem 1.A
close all;
%powerlaw fonksiyonu
disp('Problem 1.A is completed!');
pause(pauseTime);
%% Problem 1.B
close all;
It_1 = powerlaw(I,0.5);
It_2 = powerlaw(I,2);

figure;
subplot(2,2,[1,2]);
imshow(uint8(I));
title('I');
subplot(2,2,3);
imshow(uint8(It_1));
title('Gama: 0.5');

subplot(2,2,4);
imshow(uint8(It_2));
title('Gama: 2');
disp('Problem 1.B is completed!');
pause(pauseTime);
%% Problem 1.C
close all;
r = (0:1:255);
input = r;

[h,w,ch] = size(input);
co = [0.1 0.2 0.4 0.67 1 1.5 2.5 5 10];
for i =1:1:ch
    figure;
    for j=1:1:length(co)
        plot(input(:,:,ch),powerlaw(input(:,:,ch),co(j)));
        hold all;
    end
    legend('0.1','0.2','0.4','0.67','1','1.5','2.5','5','10');
    title('Gama Values')
end
disp('Problem 1.C is completed!');
pause(pauseTime);
%% Problem 2.A
close all;
normalized_histogram(I,true,'Gama:1');

I_sifirseksenbes = powerlaw(I,0.85);
normalized_histogram(I_sifirseksenbes,true,'Gama:0.85');

I_bironbes = powerlaw(I,1.15);
normalized_histogram(I_bironbes,true,'Gama:1.15');

figure;
subplot(3,1,1);
imshow(uint8(I));
title('Gama: 1');

subplot(3,1,2);
imshow(uint8(I_sifirseksenbes));
title('Gama: 0.85');

subplot(3,1,3);
imshow(uint8(I_bironbes));
title('Gama: 1.15');

disp('Problem 2.A is completed!');
pause(pauseTime);
%% Problem 3.A GrayScale
close all;
Ig_1 = rgb2gray(uint8(I));
Ig_2 = rgb2gray(uint8(I_2));
Ig_3 = rgb2gray(uint8(I_3));

normalized_histogram(Ig_1,true,'Ig_1');
normalized_histogram(Ig_2,true,'Ig_2');
normalized_histogram(Ig_3,true,'Ig_3');

I_12_sq  = im2chisquare(Ig_1,Ig_2,false);
I_13_sq  = im2chisquare(Ig_1,Ig_3,false);

showImages(Ig_1,Ig_2,I_12_sq,'Ig_1 - Ig_2 Chi Square');
showImages(Ig_1,Ig_3,I_13_sq,'Ig_1 - Ig_3 Chi Square');
disp('Problem 3.A is completed!');
pause(pauseTime);
%% Problem 3.B RGB
close all;
normalized_histogram(I,true,'I');
normalized_histogram(I_2,true,'I_2');
normalized_histogram(I_3,true,'I_3');   

I_12_sq = im2chisquare(I,I_2,false);
I_13_sq = im2chisquare(I,I_3,false);

showImages(I,I_2,I_12_sq,'I - I_2 Chi Square');
showImages(I,I_3,I_13_sq,'I - I_3 Chi Square');
disp('Problem 3.B is completed!');
pause(pauseTime);
%% Problem 3.C CBIR
close all;
normalized_histogram(I,true,'I');
normalized_histogram(I_2,true,'I_2');
normalized_histogram(I_3,true,'I_3');  

I_12_cbir = CBIR(I,I_2,false);
I_13_cbir = CBIR(I,I_3,false);

showImages(I,I_2,I_12_cbir,'I - I_2 CBIR');
showImages(I,I_3,I_13_cbir,'I - I_3 CBIR');
disp('Problem 3.C is completed!');
pause(pauseTime);
%% Comparison Methods
close all;
I_11_cbir = CBIR(I,I,false);
I_12_cbir = CBIR(I,I_2,false);
I_14_cbir = CBIR(I,I_4,false);


I_11_sq = im2chisquare(I,I,false);
I_12_sq = im2chisquare(I,I_2,false);
I_14_sq = im2chisquare(I,I_4,false);

showImages(I,I,I_11_cbir,'I - I CBIR');
showImages(I,I_2,I_12_cbir,'I - I_2 CBIR');
showImages(I,I_4,I_14_cbir,'I - I_4 CBIR');

showImages(I,I,I_11_sq,'I - I Chi Sq');
showImages(I,I_2,I_12_sq,'I - I_2 Chi Sq');
showImages(I,I_4,I_14_sq,'I - I_4 Chi Sq');
disp('Context Based Image Retrieval and Chi Square methods are compared!');







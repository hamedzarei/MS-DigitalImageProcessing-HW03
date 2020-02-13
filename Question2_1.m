%first image
img2_1 = rgb2gray(imread('img2_1.jpg'));
figure;
subplot(1,4,1);
imshow(img2_1);
title('first image');

img2_1_mask3 = median_mask(img2_1, 3);
subplot(1,4,2);
imshow(img2_1_mask3);
title('first image after 3*3 mask');


img2_1_mask5 = median_mask(img2_1, 5);
subplot(1,4,3);
imshow(img2_1_mask5);
title('first image after 5*5 mask');

img2_1_mask9 = median_mask(img2_1, 9);
subplot(1,4,4);
imshow(img2_1_mask9);
title('first image after 9*9 mask');


%second image

img2_1 = rgb2gray(imread('img2_2.jpg'));
figure;
subplot(1,4,1);
imshow(img2_1);
title('second image');

img2_1_mask3 = median_mask(img2_1, 3);
subplot(1,4,2);
imshow(img2_1_mask3);
title('second image after 3*3 mask');


img2_1_mask5 = median_mask(img2_1, 5);
subplot(1,4,3);
imshow(img2_1_mask5);
title('second image after 5*5 mask');

img2_1_mask9 = median_mask(img2_1, 9);
subplot(1,4,4);
imshow(img2_1_mask9);
title('second image after 9*9 mask');

%third image

img2_1 = imread('img2_3.png');
figure;
subplot(1,4,1);
imshow(img2_1);
title('third image');

img2_1_mask3 = median_mask(img2_1, 3);
subplot(1,4,2);
imshow(img2_1_mask3);
title('third image after 3*3 mask');


img2_1_mask5 = median_mask(img2_1, 5);
subplot(1,4,3);
imshow(img2_1_mask5);
title('third image after 5*5 mask');

img2_1_mask9 = median_mask(img2_1, 9);
subplot(1,4,4);
imshow(img2_1_mask9);
title('third image after 9*9 mask');
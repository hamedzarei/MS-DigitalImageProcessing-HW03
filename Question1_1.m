img1 = imread('circuit.tif');
figure;
subplot(1, 4, 1);
imshow(img1);
title('image');

img1_1 = myfilter(img1, 40);
subplot(1, 4, 2);
imshow(img1_1);
title('ideal low pass; D0 = 40');


img1_2 = myfilter(img1, 70);
subplot(1, 4, 3);
imshow(img1_2);
title('ideal low pass; D0 = 70');


img1_3 = myfilter(img1, 100);
subplot(1, 4, 4);
imshow(img1_3);
title('ideal low pass; D0 = 100');

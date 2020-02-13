img1 = imread('circuit.tif');
figure;
subplot(1, 4, 1);
imshow(img1);
title('image');

img1_1 = butterworth_lowpass_filter(img1, 5, 1);
subplot(1, 4, 2);
imshow(img1_1);
title('ideal low pass; D0 = 5');


img1_2 = butterworth_lowpass_filter(img1, 10, 1);
subplot(1, 4, 3);
imshow(img1_2);
title('ideal low pass; D0 = 10');


img1_3 = butterworth_lowpass_filter(img1, 20, 1);
subplot(1, 4, 4);
imshow(img1_3);
title('ideal low pass; D0 = 20');

[img, map] = imread('image3.png');
figure;
img_1 = ind2gray(img, map);
imshow(img_1);
title('image');

img_fft = fftshift(fft2(img_1));
fftshow(img_fft);
title('fft of image');

h_circle = rgb2gray(imread('image3_fft_h.png'));
h1 = (h_circle > 0);
fftshow(h1);
title('circles reject filter');

ifftshow(ifft2(img_fft.*h1));
title('circle reject filter output');

[x, y] = meshgrid(-182:181, -114:114);
z = sqrt(x.^2+y.^2);
ideal_lowpass_h = z < 100;
fftshow(ideal_lowpass_h);
title('ideal lowpass filter');
h_fft = img_fft .* ideal_lowpass_h;

i_h_fft = ifft2(h_fft);
ifftshow(i_h_fft);
title('ideal lowpass output');

H = butterworth_lowpass(img_1, 75, 1);
fftshow(H);
title('butterworth filter in fourier domain');
 
ifftshow(ifft2(img_fft.*H));
title('butterworth lowpass filter output');




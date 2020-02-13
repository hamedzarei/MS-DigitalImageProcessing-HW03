function [ imout ] = butterworth_lowpass_filter( img, D0, n )
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
img_fft = fft2(img);
H = butterworth_lowpass(img, D0, n);
imout = ifft2(img_fft.*H);

end


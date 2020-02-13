function [ imout ] = adaptive_median( img, s_start, s_max )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
padded_image = add_padding(img, s_max);
side_pad = (s_max - 1 ) / 2;
img_size = size(padded_image);
for i = 1+side_pad:img_size(1)-side_pad
    for j = 1+side_pad:img_size(2)-side_pad
        padded_image(i, j) = adaptive_median_level_a_b(padded_image, i, j, side_pad, s_start, s_max);   
    end
end


imout = delete_padding(padded_image, s_max);
end


function imout = median_mask( img, mask_size )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
img = add_padding(img, mask_size);
side_pad = (mask_size - 1) / 2;
img_size = size(img);
for i = 1+side_pad:img_size(1)-side_pad
    for j = 1+side_pad:img_size(2)-side_pad
        bound = img(i-side_pad:i+side_pad, j-side_pad:j+side_pad);
        img(i, j) = median(bound(:));
    end
end
imout = uint8(delete_padding(img, mask_size));
end


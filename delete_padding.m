function mout = delete_padding( matrix, padding_size )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
side_padding = (padding_size - 1)/2;
matrix_size = size(matrix);
mout = uint8(matrix(1+side_padding:matrix_size(1)-side_padding, 1+side_padding:matrix_size(2)-side_padding));
end


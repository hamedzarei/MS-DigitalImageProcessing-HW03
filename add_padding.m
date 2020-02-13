function mout = add_padding( matrix, padding_size )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
mout = uint8(zeros(size(matrix) + padding_size -1));
side_padding = (padding_size - 1)/2;
matrix_size = size(mout);
mout(1+side_padding:matrix_size(1)-side_padding, 1+side_padding:matrix_size(2)-side_padding) = matrix;
end


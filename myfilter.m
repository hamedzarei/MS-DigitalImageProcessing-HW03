function imout = myfilter( im, D0 )

[M,N]=size(im);
F=fft2(double(im));
hr = (M-1)/2;
hc = (N-1)/2;
[V,U] = meshgrid(-hc:hc,-hr:hr);
D = sqrt(U.^2+V.^2);
H = double(D<=D0);
G = H.*F;
g = real(ifft2(double(G)));
imout = g;
%imshow(im),figure,imshow(g,[ ]);
end


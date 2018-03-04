A = imread('blade-runner-2049-trailer-wallpapers-20-1920×811.jpg');
A = rgb2gray(A);
A = im2double(A);
[U, S, V] = svd(A);
V_t = V';
approx = 200;
compressed = U(:, 1:approx) * S(1:approx, 1:approx) * V_t(1:approx, :);
figure
imshow(compressed)
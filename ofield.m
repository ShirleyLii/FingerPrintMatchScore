function [img] = ofield( image )

sobel_x = [-1 0 1;-2 0 2;-1 0 1];
sobel_y= fspecial('sobel');
sobel_x_img = imfilter(double(image),sobel_x);
sobel_y_img = imfilter(double(image),sobel_y);
size = size(image);

height = size(1,1) - 9;
width = size(1,2)- 9;
of= zeros(size);

for i = 1:(height)
    for j = 1:(width)
        sobel_x_of= sobel_x(i:(i+8),j:(j+8));
        sobel_y_of= sobel_y(i:(i+8),j:(j+8));
        theta = th(sobel_x_of,sobel_y_of);
        of(i+4,j+4) = theta;
    end
end

drawOrientation(image,of);

end



images = {'user001_1.gif';'user002_1.gif';'user003_1.gif';'user004_1.gif';
    'user005_1.gif';'user006_1.gif';'user007_1.gif';'user008_1.gif';
    'user009_1.gif';'user010_1.gif'};

size = length(images);

for i= 1: size
    img = imread(char(images(i)));
    ofield(img);
%original images
end



clear; close all; clc


function[] = ridgepattern(theta)

for i=1:length(theta)
    theta(i)
    t = deg2rad(theta(i));
    for x=1:300
        for y=1:300
        image(x,y) =  128 * cos( 2*pi*0.1*(x*cos(t) + y*sin(t)) );
        end
    end

    figure;
    imshow (image(x,y));

    fft_img = fft2(image);
    imshow (fftshift(log(abs(fft_img)+1)));

    end
end
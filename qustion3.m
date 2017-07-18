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
function [ theta ] = th(x,y )
numerator = 0;
denominator = 0;

for i=1:9
    for j=1:9
        numerator = numerator+(2*x(i,j)*y(i,j));
        denominator = denominator + (x.^2(i,j)-y.^(i,j));
    end
    end
theta = (atan2(numerator,denominator)) * 0.5 ;

end


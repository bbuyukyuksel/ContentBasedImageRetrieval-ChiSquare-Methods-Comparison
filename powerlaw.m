function [tmp] = powerlaw(image,g)
    tmp = uint8(image .^ g);
end


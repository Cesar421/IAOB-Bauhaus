function [grayImage] = grayimage(image)
    
    grayImage = uint8(mean(image, 3));
    % imageSize = size(imageMean)

end


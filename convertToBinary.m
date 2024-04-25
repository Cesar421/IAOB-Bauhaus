function [binary_mask] = convertToBinaryOtsu(threshold, image)



% Convert the image to a binary mask using the threshold
binary_mask = im2bw(image, threshold);
end


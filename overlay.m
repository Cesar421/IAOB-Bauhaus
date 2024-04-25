function [result_image] = overlay(InvertedBinaryMask,img_stretched_gray)

reInvertInvertedBinaryMask = ~InvertedBinaryMask;
result_image = img_stretched_gray .* uint8(reInvertInvertedBinaryMask);
result_image = ~result_image;
end


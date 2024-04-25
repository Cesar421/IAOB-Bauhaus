function [img_stretched] = contrastStretching(img_gray, min_threshold,max_threshold)


% Convert to double for calculations
img_gray_double = double(img_gray);

% Apply minimum and maximum thresholds
img_gray_double(img_gray_double < min_threshold) = min_threshold;
img_gray_double(img_gray_double > max_threshold) = max_threshold;

% Perform contrast stretching
img_stretched = uint8(255 * (img_gray_double - min_threshold) / (max_threshold - min_threshold));
end


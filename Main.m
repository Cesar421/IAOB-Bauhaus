% Assignment 1, Image Analysis and Object Detection
% Initial Cleanning
clean()

disp('Code Initiated... ')
% Task 1: Image Enhancement
    % a - visualize the initial image
    % read Image
    image = imread('input_sat_image.jpg');
    % Convert to Gray Image
    
    visualizeImageAndHistogram(image, 'Original Image');
    grayImage = grayimage(image);
    visualizeImageAndHistogram(grayImage, 'Grey Image');

    % b - describe
    % c - enhance the image
    [minValue, maxValue] = calculateMinMax(grayImage);
    display('mIN VALUE');
    disp(minValue)
    display('mAX VALUE');
    disp(maxValue)
    stretchedImage = contrastStretching(grayImage, minValue,maxValue);
    % d - describe
    % e - visualize resulting enhanced image
    visualizeImageAndHistogram(stretchedImage, 'Stretched Image');

% Task 2: Binarization
    % Compute the threshold using Otsu's method
    threshold = graythresh(stretchedImage)
    % Case: 1 
        threshold1 = 1*threshold;
        % a - convert to Binary
        binarizedImage1 = convertToBinary(threshold1, stretchedImage);
        % b - visualize the result
        visualizeImageAndHistogram(~binarizedImage1, 'Inverted Binarized Image with Threshold multiplier 1');

    % Case: 2 
        threshold2 = 0.75*threshold;
        % a - convert to Binary
        binarizedImage2 = convertToBinary(threshold2, stretchedImage);
        % b - visualize the result
        visualizeImageAndHistogram(~binarizedImage2, 'Inverted Binarized Image with Threshold multiplier 0.75');

    % Case: 3 
        threshold3 = 1.25*threshold;
        % a - convert to Binary
        binarizedImage3 = convertToBinary(threshold3, stretchedImage);
        % b - visualize the result
        visualizeImageAndHistogram(~binarizedImage3, 'Inverted Binarized Image with Threshold multiplier 1.25');     

     % Lets consider binarizedImage1 ith Threshold 0.35 for future cases
        InvertedbinarizedImage = ~binarizedImage1;

% Task 3: Morphological Operators
        % a - apply morphological opening and closing
        filteredBinaryImage = morphologicalOperators(InvertedbinarizedImage);

        visualizeImageAndHistogram(filteredBinaryImage, 'Filtered Binarized Image');
        % b - Visualize the Overlay of the contrast enhanced image and the final filtered
        % mask
        finalOverledImage = overlay(filteredBinaryImage,stretchedImage);
        visualizeImageAndHistogram(finalOverledImage, 'Final Overlayed Image');

% Task 4: Results Evaluation
        % a - Are the results satisfactory
        % b - Test  with a different low-contrast input image

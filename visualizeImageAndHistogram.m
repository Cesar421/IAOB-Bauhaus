function  visualizeImageAndHistogram(image, figureTitle)
figure('name', figureTitle);
subplot (2,1,1), imshow(image), title('Image');

subplot (2,1,2), imhist(image), title('Histogram');

imageSize = size(image)

fileName = sprintf('%s .jpg', figureTitle);

imwrite(image, fullfile('./results/', fileName));
end


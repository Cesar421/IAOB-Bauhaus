function [closed_mask] = morphologicalOperators(binaryImage, shape, size)
% Apply morphological opening
opened_mask = imopen(binaryImage, strel(shape, size));

% Apply morphological closing
closed_mask = imclose(opened_mask, strel(shape, size));
end


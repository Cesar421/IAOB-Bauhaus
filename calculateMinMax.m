function [minValue,maxValue] = calculateMinMax(image)
%CALCULATEMINMAX Summary of this function goes here
%   Detailed explanation goes here

minValue = double(min(min(image)));
maxValue = double(max(max(image)));
end


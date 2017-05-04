function [output] = KrigMeta(x)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
load('constants')
load('Krig')


output(1) = predictor(x, d_current);
output(2) = predictor(x, d_force);
output(3) = x(1);
disp(['Current = ', num2str(output(1)), '; Force = ', num2str(output(2)), '; d = ', num2str(output(3))])


end


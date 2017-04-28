% To find the x(t) curve of the experimental data
% All units in meters and seconds

load('April Test Data.mat')

% Set the Strap Length (meters)
strap = 0.15;

% The accelerometers were slightly offset from each other when standing
% still, this adjusts them so the means with no motion are equal
angle_adjust = mean(a_bottom(1:90) - a_top(1:90));
a_top = a_top + angle_adjust;

% By looking at the peaks, we determined the bottom acclerometer was
% started approximated 3 samples (3/30 seconds) after the top one. This
% adjusts them so they are together
t_adjust = 3;
time_bottom = time_bottom + t_adjust/30;

% This defines the start and end of an interval. This is 1 step
si = 195;
ei = 232;

% Now we take the relative acceleration between the two phones
a_rel = a_bottom(si:ei) - a_top(si:ei);
t_rel = time_top(si:ei);

% Now we find the velocity and x position by taking the integral step by
% step numerically
v_rel = stepint(t_rel, a_rel);
x_rel = stepint(t_rel, v_rel);

% Here we adjust the x position so that at the start of the cycle the
% displacement is 0.
x_rel = strap - (x_rel - x_rel(1));


plot(t_rel, x_rel)

% figure()
% hold on
% plot(time_top(si:ei), a_top(si:ei), 'r')
% plot(time_bottom(si-t_adjust:ei-t_adjust), a_bottom(si-t_adjust:ei-t_adjust), 'b')
% 
% figure()
% plot(time_top(si:ei), a_rel, 'r')


function [integral] = stepint(x,y)
%   This will return a vector that is the integral at each x-step of the
%   input vector y.
    integral = zeros(1,length(y));
    for i=1:length(x)-1
        integral(i) = (x(i+1) - x(i))*0.5*(y(i) + y(i+1));
    end
end

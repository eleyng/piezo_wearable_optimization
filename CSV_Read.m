accel_data_top = csvread('April Trial Top.csv');

accel_data_bottom = csvread('April Trial Bottom.csv');

time_bottom = accel_data_bottom(:,2);
time_top = accel_data_top(:,2);

%  In m/s^2
a_bottom = accel_data_bottom(:,4);
a_top = accel_data_top(:,4);

save('April Test Data.mat', 'time_bottom', 'time_top', 'a_bottom', 'a_top')
% hold on
% 
% plot(accel_data_top(:,2), accel_data_top(:,4), 'r')
% plot(accel_data_bottom(:,2), accel_data_bottom(:,4), 'b')

% plot(accel_data(:,1), accel_data(:,2))
% plot(locs/30, peaks, 'r+')

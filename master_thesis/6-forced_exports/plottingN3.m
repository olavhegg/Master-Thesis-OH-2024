% Script that plots the simulation data from N3 simulation

close all;

% Load data from n3.mat
load('n3.mat', 'n3');

% Extract data from the loaded variable
time_steps = n3(1,:); % Time steps
without_N1 = n3(2, :); % Data without N1
with_N1 = n3(3, :); % Data with N1

% Plot 1: From week 8 to week 12 (converted to days 1-31, corresponding to March)
figure;
start_week_1 = 8; 
end_week_1 = 12;
start_idx_1 = find(time_steps * 100 >= start_week_1, 1);
end_idx_1 = find(time_steps * 100 <= end_week_1, 1, 'last');

time_steps_weeks_8_to_12 = linspace(0, 31, length(time_steps(start_idx_1:end_idx_1))); 
without_N1_weeks_8_to_12 = without_N1(start_idx_1:end_idx_1);
with_N1_weeks_8_to_12 = with_N1(start_idx_1:end_idx_1);

plot(time_steps_weeks_8_to_12, with_N1_weeks_8_to_12, 'b-', 'LineWidth', 1);
hold on;
plot(time_steps_weeks_8_to_12, without_N1_weeks_8_to_12, 'r-', 'LineWidth', 2);
xlabel('Time (days)', 'FontSize', 16);
ylabel('EURO/NOK', 'FontSize', 16);
title('EURO/NOK Before and After Policy Implementation (March first Year)', 'FontSize', 18);
legend('EUR/NOK with N1', 'EUR/NOK without N1', 'FontSize', 14);
grid on;
xlim([0, 31]);
hold off;

% Plot 2: From week 9 day 6 to week 10 day 2 (converted to days 1-3)
figure;
start_time_2 = 9 + 6/7; % Week 9 day 6
end_time_2 = 10 + 2/7; % Week 10 day 2
start_idx_2 = find(time_steps * 100 >= start_time_2, 1);
end_idx_2 = find(time_steps * 100 <= end_time_2, 1, 'last');

time_steps_weeks_9d6_to_10d2 = linspace(0, 3, length(time_steps(start_idx_2:end_idx_2))); 
without_N1_weeks_9d6_to_10d2 = without_N1(start_idx_2:end_idx_2);
with_N1_weeks_9d6_to_10d2 = with_N1(start_idx_2:end_idx_2);

plot(time_steps_weeks_9d6_to_10d2, with_N1_weeks_9d6_to_10d2, 'b-', 'LineWidth', 1);
hold on;
plot(time_steps_weeks_9d6_to_10d2, without_N1_weeks_9d6_to_10d2, 'r-', 'LineWidth', 2);
xlabel('Time (days)', 'FontSize', 16);
ylabel('EURO/NOK', 'FontSize', 16);
title('EURO/NOK Before and After Policy Implementation (Week 9 Day 6 to Week 10 Day 2)', 'FontSize', 18);
legend('EUR/NOK with N1', 'EUR/NOK without N1', 'FontSize', 14);
grid on;
xlim([0, 3]);
hold off;

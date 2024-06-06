% Script to plot the impact currency transaction have on the exchange rate with controller
close all;

% Load data from oil.mat and c2.mat
load('oil.mat', 'oil');
load('c2.mat', 'c2');

% Extract data from the loaded variables
time_steps = oil(1,:); % Time steps
exchange_rate_with_noise_oil = oil(4, :); % EUR/NOK exchange rate with noise (oil)
exchange_rate_without_noise_oil = oil(3, :); % EUR/NOK exchange rate without noise (oil)
exchange_rate_with_noise_c2 = c2(4, :); % EUR/NOK exchange rate with noise (c2)
exchange_rate_without_noise_c2 = c2(3, :); % EUR/NOK exchange rate without noise (c2)

% Determine the number of data points for one year (half the dataset)
half_data_points = floor(length(time_steps) / 2);

% Plot 1: Entire first year
figure;

subplot(2,1,1);
plot(time_steps(1:half_data_points) * 100, exchange_rate_with_noise_oil(1:half_data_points), 'b-', 'LineWidth', 1);
hold on;
plot(time_steps(1:half_data_points) * 100, exchange_rate_with_noise_c2(1:half_data_points), 'r-', 'LineWidth', 1);
xlabel('Time (weeks)');
ylabel('EUR/NOK');
title('Comparison of EUR/NOK with Noise (Full Year)');
legend('EUR/NOK without FRM', 'EUR/NOK with FRM');
grid on;
xlim([0, 52]);
hold off;

subplot(2,1,2);
plot(time_steps(1:half_data_points) * 100, exchange_rate_without_noise_oil(1:half_data_points), 'b-', 'LineWidth', 1);
hold on;
plot(time_steps(1:half_data_points) * 100, exchange_rate_without_noise_c2(1:half_data_points), 'r-', 'LineWidth', 1);
xlabel('Time (weeks)');
ylabel('EUR/NOK');
title('Comparison of EUR/NOK without Noise (Full Year)');
legend('EUR/NOK without FRM', 'EUR/NOK with FRM');
grid on;
xlim([0, 52]);
hold off;

% Plot 2: September to December
figure;

start_week = 36; % Week corresponding to the start of September
end_week = 52; % Week corresponding to the end of December
start_idx = find(time_steps * 100 >= start_week, 1);
end_idx = find(time_steps * 100 <= end_week, 1, 'last');

subplot(2,1,1);
plot(time_steps(start_idx:end_idx) * 100, exchange_rate_with_noise_oil(start_idx:end_idx), 'b-', 'LineWidth', 1);
hold on;
plot(time_steps(start_idx:end_idx) * 100, exchange_rate_with_noise_c2(start_idx:end_idx), 'r-', 'LineWidth', 1);
xlabel('Time (weeks)');
ylabel('EUR/NOK');
title('Comparison of EUR/NOK with Noise (September to December)');
legend('EUR/NOK without FRM', 'EUR/NOK with FRM');
grid on;
xlim([start_week, end_week]);
hold off;

subplot(2,1,2);
plot(time_steps(start_idx:end_idx) * 100, exchange_rate_without_noise_oil(start_idx:end_idx), 'b-', 'LineWidth', 1);
hold on;
plot(time_steps(start_idx:end_idx) * 100, exchange_rate_without_noise_c2(start_idx:end_idx), 'r-', 'LineWidth', 1);
xlabel('Time (weeks)');
ylabel('EUR/NOK');
title('Comparison of EUR/NOK without Noise (September to December)');
legend('EUR/NOK without FRM', 'EUR/NOK with FRM');
grid on;
xlim([start_week, end_week]);
ylim([11.99, 12.08]);
hold off;

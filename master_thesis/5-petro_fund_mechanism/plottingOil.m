% Script to plot the impact currency transaction have on the Exchange rate

close all;

% Load data from oil.mat
load('oil.mat', 'oil');

% Extract data from the loaded variable
time_steps = oil(1,:); % Time steps
currency_transactions = oil(2, :); % Currency transactions in million NOK per day
exchange_rate_without_noise = oil(3, :); % EUR/NOK exchange rate without noise
exchange_rate_with_noise = oil(4, :); % EUR/NOK exchange rate with noise

% Determine the number of data points for one year (half the dataset)
half_data_points = floor(length(time_steps) / 2);

% Plot 1: First year (52 weeks)
figure;
first_year_time_steps = time_steps(1:half_data_points) * 100;

plot(first_year_time_steps, exchange_rate_with_noise(1:half_data_points), 'b-', 'LineWidth', 1); % Line representing with noise
hold on;
plot(first_year_time_steps, exchange_rate_without_noise(1:half_data_points), 'r-', 'LineWidth', 2); % Line representing without noise, increased width
xlabel('Time (weeks)', 'FontSize', 14); % Adjust font size
ylabel('EUR/NOK', 'FontSize', 14); % Adjust font size
title('Simulation of the EUR/NOK with NB Currency Transactions (1 year)', 'FontSize', 16); % Adjust font size
legend('EUR/NOK with N1', 'EUR/NOK without N1', 'FontSize', 12); % Adjust font size
grid on;
xlim([0, 52]); 
hold off;

% Plot 2: From week 9 to week 12 (4 weeks)
figure;

start_week = 9; 
end_week = 12;
start_idx = find(time_steps * 100 >= start_week, 1) - 10;
end_idx = find(time_steps * 100 <= end_week, 1, 'last');

time_steps_weeks_9_to_12 = time_steps(start_idx:end_idx) * 100; 
exchange_rate_with_noise_weeks_9_to_12 = exchange_rate_with_noise(start_idx:end_idx);
exchange_rate_without_noise_weeks_9_to_12 = exchange_rate_without_noise(start_idx:end_idx);
currency_transactions_weeks_9_to_12 = currency_transactions(start_idx:end_idx);

subplot(2,1,1);
plot(time_steps_weeks_9_to_12, exchange_rate_with_noise_weeks_9_to_12, 'b-', 'LineWidth', 1);
hold on;
plot(time_steps_weeks_9_to_12, exchange_rate_without_noise_weeks_9_to_12, 'r-', 'LineWidth', 1);
xlabel('Time (weeks)', 'FontSize', 14); % Adjust font size
ylabel('EUR/NOK', 'FontSize', 14); % Adjust font size
title('EUR/NOK from Week 9 to Week 12 with NB Currency Transactions', 'FontSize', 16); % Adjust font size
legend('EUR/NOK with N1', 'EUR/NOK without N1', 'Location', 'Best', 'FontSize', 12); % Adjust font size
grid on;
xlim([start_week, end_week]); 
hold off;

subplot(2,1,2);
border = 50;
plot(time_steps_weeks_9_to_12, currency_transactions_weeks_9_to_12, 'b-', 'LineWidth', 1); % Color set to magenta
xlabel('Time (weeks)', 'FontSize', 14); % Adjust font size
ylabel('Million NOK per day', 'FontSize', 14); % Adjust font size
title('Currency Transactions from Week 9 to Week 12', 'FontSize', 16); % Adjust font size
grid on;
xlim([start_week, end_week]);
ylim([min(currency_transactions_weeks_9_to_12) - border, max(currency_transactions_weeks_9_to_12) + border]); % Added padding to y-axis limits

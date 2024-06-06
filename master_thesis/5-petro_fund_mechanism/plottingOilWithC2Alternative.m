% Alternative script to plot the impact currency transaction have on the exchange rate with controller

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

% Plot: Exchange rate and currency transactions over one year
figure;

% Plot exchange rate
subplot(2,1,1);
first_year_time_steps = time_steps(1:half_data_points) * 100;
plot(first_year_time_steps, exchange_rate_with_noise(1:half_data_points), 'b-', 'LineWidth', 1); % Line representing with noise
hold on;
plot(first_year_time_steps, exchange_rate_without_noise(1:half_data_points), 'r-', 'LineWidth', 2); % Line representing without noise, increased width
xlabel('Time (weeks)', 'FontSize', 14); % Adjust font size
ylabel('EUR/NOK', 'FontSize', 14); % Adjust font size
title('Simulation of EUR/NOK in 2022 with Currency Transactions', 'FontSize', 16); % Adjust font size
legend('EUR/NOK with N1', 'EUR/NOK without N1', 'FontSize', 12); % Adjust font size
grid on;
xlim([0, 52]); 
hold off;

% Plot currency transactions

subplot(2,1,2);
plot(steps, currency_transactions(1:half_data_points), 'b-', 'LineWidth', 1);
xlabel('Time (weeks)', 'FontSize', 14); % Adjust font size
ylabel('Million NOK per day', 'FontSize', 14); % Adjust font size
title('Daily Currency Transactions by Norges Bank in 2022', 'FontSize', 16); % Adjust font size
grid on;
xlim([0, 52]);

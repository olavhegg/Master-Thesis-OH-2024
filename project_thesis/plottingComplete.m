% This script loads data from a file and plots the Policy Rate, Inflation, and Exchange Rates.

% Load data from file
load('complete.mat');

x = completeData(1, :);
policyRate = completeData(2, :);
inflation = completeData(3, :);
referenceExchangeRate = completeData(4, :);
exchangeRate = completeData(5, :);

% Scale the x-axis by 100
x = x * 100;

% Create a figure
figure;

% Create the first subplot for Policy Rate and Inflation
subplot(2, 1, 1);
plot(x, policyRate, 'b', 'LineWidth', 1.5); % Blue line for policy rate
hold on;
plot(x, inflation, 'r', 'LineWidth', 1.5); % Red line for inflation
grid on;
xlim([0 max(x)]);
ylim([1.2 2.3]); % Adjust the y-axis limits

xlabel('Weeks');
ylabel('Percentage');
title('Policy Rate and Inflation', 'FontSize', 14); % Increase font size
legend('Policy Rate', 'Inflation', 'FontSize', 12); % Add a legend

% Create the second subplot for Exchange Rates
subplot(2, 1, 2);
plot(x, referenceExchangeRate, 'g', 'LineWidth', 1.5); % Green line for reference ER
hold on;
plot(x, exchangeRate, 'm', 'LineWidth', 1.5); % Magenta line for ER
grid on;
xlim([0 max(x)]);
ylim([9.95 10.2]); % Adjust the y-axis limits for exchange rates

xlabel('Weeks');
ylabel('Exchange Rate');
title('Reference Exchange Rate and Exchange Rate', 'FontSize', 14); % Increase font size
legend('Reference ER', 'ER', 'FontSize', 12); % Add a legend

% Adjust the spacing between subplots
ax1 = gca;
ax1.Position(4) = ax1.Position(4) - 0.05;

% Create a new figure for the zoomed-in plot
figure;

plot(x, referenceExchangeRate, 'g', 'LineWidth', 1.5); % Green line for reference ER
hold on;
plot(x, exchangeRate, 'm', 'LineWidth', 1.5); % Magenta line for ER
grid on;
xlim([0 max(x)]);
ylim([9.8 10.3]); % Adjust the y-axis limits for exchange rates

xlabel('Weeks');
ylabel('Exchange Rate');
title('Reference Exchange Rate and Exchange Rate Zoomed in', 'FontSize', 14); % Increase font size
legend('Reference ER', 'ER', 'FontSize', 12); % Add a legend

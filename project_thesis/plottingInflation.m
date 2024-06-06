% This script loads inflation data from a file and plots the Policy Rate and Inflation Development.

% Load data from file
load('inflation.mat');

x = inflationData(1, :);
policyRate = inflationData(2, :); 
inflation = inflationData(3, :); 

% Scale the x-axis by 100
x = x * 100;

% Create a figure
figure;

% Create the subplot for Policy Rate
subplot(2, 1, 1);
plot(x, policyRate, 'b', 'LineWidth', 1.5); % Blue line for policy rate
grid on;
xlim([0 104]);
xlabel('Weeks', 'FontSize', 14); % Increase font size
ylabel('Policy Rate (%)', 'FontSize', 14); % Increase font size
title('Policy Rate Development', 'FontSize', 16); % Increase font size

% Create the subplot for Inflation
subplot(2, 1, 2);
plot(x, inflation, 'r', 'LineWidth', 1.5); % Red line for inflation
grid on;
xlim([0 104]);
ylim([0 5]);
xlabel('Weeks', 'FontSize', 14); % Increase font size
ylabel('Inflation (%)', 'FontSize', 14); % Increase font size
title('Inflation Development', 'FontSize', 16); % Increase font size

% Add reference target inflation line
targetInflation = 2 * ones(size(x));
hold on;
plot(x, targetInflation, '--r', 'LineWidth', 2); % Red dashed line for target inflation
legend('Inflation', 'Target Inflation', 'FontSize', 12); % Add a legend

% Adjust the spacing between subplots
subplot(2, 1, 1);
ax1 = gca;
ax1.Position(4) = ax1.Position(4) - 0.05;

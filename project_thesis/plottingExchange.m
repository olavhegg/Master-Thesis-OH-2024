% This script loads EURONOK exchange rate data from a file and plots the exchange rate 
% alongside the reference exchange rate.

% Load data from file
load('EURONOK.mat');

x = ERData(1, :);
y = ERData(3, :); 
referenceRate = ERData(2, :); % Load the reference exchange rate data

% Scale the x-axis by 100
x = x * 100;

% Create a figure
figure;

% Create the plot for EURONOK
plot(x, y, 'b', 'LineWidth', 1.5); % Blue line for EURONOK
hold on; % Hold the plot to add more data

% Add the reference exchange rate to the same plot
plot(x, referenceRate, 'r--', 'LineWidth', 1.5); % Red dashed line for reference rate

grid on;
xlim([0 10]);

xlabel('Weeks');
ylabel('Exchange Rate');
title('EURONOK Exchange Rate and Reference Exchange Rate');

legend('EURONOK', 'Reference Rate'); % Add a legend

hold off; % Release the hold on the plot

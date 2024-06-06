% This script loads EURONOK exchange rate and imported inflation data from a file and plots them.

% Load data from file
load('EURONOK.mat');

x = ERData(1, :);
y = ERData(3, :); 
importedInflation = ERData(2, :); % Load imported inflation data

% Scale the x-axis by 100
x = x * 100;

% Create a figure
figure;

% Create the first subplot for EURONOK
subplot(2, 1, 1);
plot(x, y, 'b', 'LineWidth', 1.5); % Blue line for EURONOK
grid on;
xlim([0 104]);
ylim([9.5 11]); % Adjust the y-axis limits for EURONOK

xlabel('Weeks');
ylabel('Exchange Rate (%)');
title('EURONOK Exchange Rate', 'FontSize', 14); % Increase font size

% Create the second subplot for Imported Inflation
subplot(2, 1, 2);
plot(x, importedInflation, 'r', 'LineWidth', 1.5); % Red line for imported inflation
grid on;
xlim([0 104]);
ylim([-0.1 0.6]); % Adjust the y-axis limits for Imported Inflation

xlabel('Weeks');
ylabel('Imported Inflation (%)');
title('Imported Inflation', 'FontSize', 14); % Increase font size

% Adjust the spacing between subplots and make them the same height
subplot(2, 1, 1);
ax1 = gca;
ax1.Position(4) = ax1.Position(4) - 0.05;
subplot(2, 1, 2);
ax2 = gca;
ax2.Position(4) = ax1.Position(4); % Make the height of the second subplot same as the first

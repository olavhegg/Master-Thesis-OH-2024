% This script plots the government spending and taxation data over time, and also plots the change in inflation and exchange rate.

% Load the data from the file
load('fiscal.mat', 'fiscalData');

% Extract each variable from the array
Time = fiscalData(1, :) * 100;  % Convert time from seconds to weeks
G = fiscalData(2, :);           % Government Spending
T = fiscalData(3, :);           % Taxation
Delta_If = fiscalData(5, :);    % Change in Inflation
Delta_Ef = fiscalData(6, :);    % Change in Exchange Rate

% Create a figure for fiscal inputs
figure;
plot(Time, G, 'b', Time, T, 'r');
title('Government Spending and Taxation');
xlabel('Time (weeks)');
ylabel('Billion NOK');
legend('Government Spending (G)', 'Taxation (T)');
grid on;
xlim([0 Time(end)]);  % Set x-axis limits from 0 to the last time value
applyBuffer([G T]);  % Apply 5% buffer to Government Spending and Taxation plot

% Create a second figure for outputs
figure;
subplot(2, 1, 1);
plot(Time, Delta_If);
title('Change in Inflation (\Delta I_f)');
xlabel('Time (weeks)');
ylabel('Percentage');
grid on;
xlim([0 Time(end)]);  % Set x-axis limits from 0 to the last time value
applyBuffer(Delta_If);  % Apply 5% buffer to Change in Inflation plot

subplot(2, 1, 2);
plot(Time, Delta_Ef);
title('Change in Exchange Rate (\Delta E_f)');
xlabel('Time (weeks)');
ylabel('Percentage');
grid on;
xlim([0 Time(end)]);  % Set x-axis limits from 0 to the last time value
applyBuffer(Delta_Ef);  % Apply 5% buffer to Change in Exchange Rate plot

% Function to apply a 5% buffer to y-axis limits
function applyBuffer(data)
    dataRange = max(data) - min(data);
    if dataRange == 0
        buffer = 0.05 * max(data); % Use 5% of the actual value if the range is zero
        if buffer == 0
            buffer = 1; % Default buffer if value is also zero
        end
    else
        buffer = 0.05 * dataRange;
    end
    newMin = min(data) - buffer;
    newMax = max(data) + buffer;
    ylim([newMin, newMin + (newMax-newMin)]); % Ensure that min and max are different
end


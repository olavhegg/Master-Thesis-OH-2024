% This script plots the fiscal inputs including government spending, taxation, net exports, and the changes in inflation and exchange rate over time.

% Load the data from the file
load('fiscal.mat', 'fiscalData');

% Extract each variable from the array
Time = fiscalData(1, :) * 100;  % Convert time from seconds to weeks
G = fiscalData(2, :);           % Government Spending
T = fiscalData(3, :);           % Taxation
NX = fiscalData(4, :);          % Net Exports
Delta_If = fiscalData(5, :);    % Change in Inflation
Delta_Ef = fiscalData(6, :);    % Change in Exchange Rate

% Create a figure for fiscal inputs
figure;
subplot(2, 1, 1);
plot(Time, G, 'b', Time, T, 'r');
title('Government Spending and Taxation');
xlabel('Time (weeks)');
ylabel('Billion NOK');
legend('Government Spending (G)', 'Taxation (T)');
grid on;
xlim([0 Time(end)]);  % Set x-axis limits from 0 to the last time value
applyBuffer([T, G]); 

subplot(2, 1, 2);
plot(Time, NX);
title('Net Exports (NX)');
xlabel('Time (weeks)');
ylabel('Billion NOK');
grid on;
xlim([0 Time(end)]);  % Set x-axis limits from 0 to the last time value
applyBuffer(NX); 

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
applyBuffer(Delta_Ef);  % Apply 5% buffer to Change 

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


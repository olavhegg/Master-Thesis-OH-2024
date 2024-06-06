% Script to plot data from Announcement Simulation

% Load data from ann.mat
load('ann.mat', 'anno');

% Extract data from the loaded variable
time_steps = anno(1,:); % Time steps
exchange_rate = anno(2, :); % Exchange rate

% Limit time frame to 0.2 seconds (20 weeks in simulation time)
max_time = round((0.2 / 1.04) * length(time_steps)); % 0.2 seconds converted to time steps or the length of time_steps, whichever is smaller
time_steps = time_steps(1:max_time)*100;
exchange_rate = exchange_rate(1:max_time);

% Plotting
plot(time_steps, exchange_rate, 'b-', 'LineWidth', 2);
xlabel('Time (weeks)');
ylabel('EURONOK');
title('20 week simulation of the EURONOK with announcement');
grid on;

% Set x-axis limits
xlim([0, 20]);


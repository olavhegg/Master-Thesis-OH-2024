% Initial Parameter Values for the Fiscal Policy Model

% c12 - Impact of cumulative budget balance on inflation
c12 = 0.0008;

% d11 - Impact of Government Spending (G) on inflation
d11 = 0.00005;

% d12 - Impact of Taxation (T) on inflation
d12 = -0.000025;

% d13 - Impact of Net Exports (NX) on inflation
d13 = 0.0000001;

% d21 - Impact of Government Spending (G) on exchange rate
d21 = 0.000015;

% d22 - Impact of Taxation (T) on exchange rate
d22 = -0.00001;

% d23 - Impact of Net Exports (NX) on exchange rate
d23 = 0.00008;

% Time constants
t_if = 0.10;  % Time constant for inflation impact
t_ef = 0.02;  % Time (speed of adjustment) constant for exchange rate impact
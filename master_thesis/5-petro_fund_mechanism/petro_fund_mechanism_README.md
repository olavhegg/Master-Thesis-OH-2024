# 5-Petro_Fund_Mechanism

This folder contains MATLAB scripts and Simulink models used for analyzing the impact of currency transactions on the exchange rate, including scenarios with and without a controller (C2).

## Files

### MATLAB Scripts

- `plottingOil.m`
  - This script plots the impact currency transactions have on the exchange rate over different time periods.

- `plottingOilWithC2.m`
  - This script plots the impact currency transactions have on the exchange rate with a controller (C2) over different time periods.

- `plottingOilWithC2Alternative.m`
  - This script provides an alternative plot of the impact currency transactions have on the exchange rate with a controller (C2).

### Simulink Models

- `oil_withC2.slx`
  - The Simulink model used for simulating the impact of currency transactions on the exchange rate with a controller (C2).

- `oil.slx`
  - The Simulink model used for simulating the impact of currency transactions on the exchange rate without a controller.

## Description

### Plotting Scripts
- **`plottingOil.m`**: Plots the effect of currency transactions on the exchange rate, focusing on different time periods such as one year and specific weeks.
- **`plottingOilWithC2.m`**: Plots the effect of currency transactions on the exchange rate with a controller (C2), comparing scenarios with and without the controller over different time periods.
- **`plottingOilWithC2Alternative.m`**: Provides an alternative plot comparing the effects of currency transactions with and without a controller (C2).

### Simulink Models
- **`oil_withC2.slx`**: Simulink model simulating the effect of currency transactions on the exchange rate with a controller (C2).
- **`oil.slx`**: Simulink model simulating the effect of currency transactions on the exchange rate without a controller.

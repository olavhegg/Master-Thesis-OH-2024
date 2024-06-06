# 7-Fiscal

This folder contains MATLAB scripts and a Simulink model used for the fiscal policy analysis in the Master's thesis. The scripts include the initialization of parameters, tuning of parameters, and plotting of various fiscal variables and their impacts.

## Files

### MATLAB Scripts

- `fiscal_init.m`
  - Initializes the parameters for the fiscal policy model.

- `fiscal_tuned.m`
  - Contains the tuned parameters for the fiscal policy model.

- `plotFiscalInputsOutputs.m`
  - This script plots the fiscal inputs including government spending, taxation, net exports, and the changes in inflation and exchange rate over time.

- `plotFiscalVariables.m`
  - This script plots the taxation, government spending, and net exports data over time, and also plots the change in inflation and exchange rate.

- `plotGovSpendingTaxation.m`
  - This script plots the government spending and taxation data over time, and also plots the change in inflation and exchange rate.

### Simulink Model

- `fiscalnew.slx`
  - The Simulink model used for simulating fiscal policy impacts.

## Description

### Parameter Initialization
- **`fiscal_init.m`**: Defines the initial parameter values for the fiscal policy model.

### Parameter Tuning
- **`fiscal_tuned.m`**: Contains the tuned parameter values for optimizing the fiscal policy model.

### Plotting Scripts
- **`plotFiscalInputsOutputs.m`**: Plots the fiscal inputs (government spending, taxation, net exports) and their impacts on inflation and exchange rate over time.
- **`plotFiscalVariables.m`**: Plots taxation, government spending, net exports, and their respective impacts on inflation and exchange rate over time.
- **`plotGovSpendingTaxation.m`**: Plots government spending and taxation over time and their impacts on inflation and exchange rate.

### Simulink Model
- **`fiscalnew.slx`**: Simulink model file containing the simulation setup for analyzing fiscal policy effects.

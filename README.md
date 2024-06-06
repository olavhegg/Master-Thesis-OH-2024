# Master Thesis Repository

Repository for my Master Thesis named; **New Ways to Control Exchange Rates and Financial Markets**

This repository contains all the MATLAB scripts, Simulink models, and data files used for the analysis and simulations conducted in the Master's thesis. The repository is organized into several folders, each focusing on a specific aspect of the thesis.

- **Author**: Olav Heggelund
- **Completion Date**: Spring 2024

## Simulation Notes
Most simulations conducted for this thesis span over 104 weeks, corresponding to a 2-year period. In the Simulink models, this is represented as 1.04 seconds of simulation time, where each week corresponds to 0.01 seconds in the simulation.

## Folder Structure

### 4-Announcement
This folder contains MATLAB scripts and a Simulink model used for analyzing the impact of announcements on fiscal policy.

- `announceParameters.m`: Defines the parameters for the announcement impact model.
- `plottingAnnounce.m`: Plots the impact of announcements on various fiscal variables.
- `announcement.slx`: Simulink model used for simulating the impact of announcements on fiscal policy.

### 5-Petro_Fund_Mechanism
This folder contains MATLAB scripts and Simulink models used for analyzing the impact of currency transactions on the exchange rate, including scenarios with and without a controller (C2).

- `plottingOil.m`: Plots the impact currency transactions have on the exchange rate over different time periods.
- `plottingOilWithC2.m`: Plots the impact currency transactions have on the exchange rate with a controller (C2) over different time periods.
- `plottingOilWithC2Alternative.m`: Provides an alternative plot of the impact currency transactions have on the exchange rate with a controller (C2).
- `oil_withC2.slx`: Simulink model for simulating the impact of currency transactions on the exchange rate with a controller (C2).
- `oil.slx`: Simulink model for simulating the impact of currency transactions on the exchange rate without a controller.

### 6-Forced_Exports
This folder contains MATLAB scripts and a Simulink model used for simulating the impact of mandating payment of petroleum in NOK (N3).

- `N3Parameters.m`: Defines the parameters for the N3 impact model.
- `plottingN3.m`: Plots the impact of mandating petroleum payments in NOK on various fiscal variables.
- `N3Sim.slx`: Simulink model used for simulating the impact of mandating petroleum payments in NOK.

### 7-Fiscal
This folder contains MATLAB scripts and a Simulink model used for fiscal policy analysis.

- `fiscal_init.m`: Initializes the parameters for the fiscal policy model.
- `fiscal_tuned.m`: Contains the tuned parameters for the fiscal policy model.
- `plotFiscalInputsOutputs.m`: Plots the fiscal inputs (government spending, taxation, net exports) and their impacts on inflation and exchange rate over time.
- `plotFiscalVariables.m`: Plots taxation, government spending, net exports, and their respective impacts on inflation and exchange rate over time.
- `plotGovSpendingTaxation.m`: Plots government spending and taxation over time and their impacts on inflation and exchange rate.
- `fiscalnew.slx`: Simulink model used for analyzing fiscal policy impacts.

### Python
This folder contains Python scripts and data files used for generating various plots in the Master's thesis.

- `calcVolatility.py`: Calculates the volatility of currency exchange rates based on provided data.
- `plotER_OIL.py`: Plots the exchange rates against oil prices data.
- `plotRUBEUR.py`: Plots the RUB/EUR exchange rates.
- `plotUSDNOK.py`: Plots the USD/NOK exchange rates.
- `sortUSDNOK.py`: Sorts the USD/NOK exchange rate data.
- Data files: `brent.csv`, `NOKUSD.csv`, `RUB_EUR.csv`, `USDNOK_april_2024.csv`, `USDNOK_april_2024_sorted.csv`

### Project_Thesis
This folder contains MATLAB scripts and a Simulink model used for the project thesis delivered in Fall 2023.

- `parameters.m`: Sets the parameters for the Simulink model.
- `plottingComplete.m`: Plots the policy rate, inflation, and exchange rates using complete data.
- `plottingExchange.m`: Plots the EURONOK exchange rate and the reference exchange rate.
- `plottingInflation.m`: Plots the policy rate and inflation data.
- `plottingExchInflation.m`: Plots the EURONOK exchange rate and imported inflation data.
- `simulink_model.slx`: Simulink model used for the simulations in the project thesis.

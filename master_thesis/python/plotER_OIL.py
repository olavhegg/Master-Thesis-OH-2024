import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt

# This script plots the exchange rates against oil prices data.

def plot_prices(brent_file_path, nokusd_file_path):
    # Read the CSV files into DataFrames
    brent_df = pd.read_csv(brent_file_path)
    nokusd_df = pd.read_csv(nokusd_file_path)

    # Convert the "Date" columns to datetime format
    brent_df['Date'] = pd.to_datetime(brent_df['Date'])
    nokusd_df['Date'] = pd.to_datetime(nokusd_df['Date'])

    # Set the style to "darkgrid"
    sns.set_style("darkgrid")

    # Create a figure and axis object
    fig, ax1 = plt.subplots(figsize=(12, 8))

    # Plot Brent crude oil prices on the first y-axis
    sns.lineplot(data=brent_df, x='Date', y='Close', color='tab:blue', label='Brent Crude Oil Price', ax=ax1)
    ax1.set_xlabel('Year', fontsize=18)  # Changed x-axis label to "Year" and increased font size
    ax1.set_ylabel('Brent Price (USD)', color='tab:blue', fontsize=18)  # Increased font size
    ax1.tick_params(axis='y', colors='tab:blue', labelsize=16)  # Increased tick label size
    ax1.grid(True, color='lightgrey')  # Set grid color for Brent prices

    # Create a second y-axis for NOK/USD exchange rates
    ax2 = ax1.twinx()
    sns.lineplot(data=nokusd_df, x='Date', y='Close', color='tab:red', label='NOK/USD Exchange Rate', ax=ax2)
    ax2.set_ylabel('NOK/USD Exchange Rate', color='tab:red', fontsize=18)  # Increased font size
    ax2.yaxis.set_label_coords(1.05, 0.5)  # Adjust position of the axis title
    ax2.tick_params(axis='y', colors='tab:red', labelsize=16)  # Increased tick label size
    ax2.grid(True, color='lightgrey')  # Set grid color for NOK/USD exchange rates

    # Add legend in bottom left corner with slight offset
    ax1.legend(loc='lower left', fontsize=16, bbox_to_anchor=(0.0, 0.0))  # Increased legend font size and adjusted location
    ax2.legend(loc='lower left', fontsize=16, bbox_to_anchor=(0.0, 0.05))  # Increased legend font size and adjusted location

    # Title and overall plot adjustments
    plt.title('Brent Crude Oil Prices vs NOK/USD Exchange Rate', fontsize=20)  # Increased title font size
    ax1.tick_params(axis='x', labelsize=14)  # Increased x-axis tick label size
    plt.tight_layout()  # Adjust spacing to prevent overlapping labels
    plt.show()

def main():
    brent_file_path = "brent.csv"
    nokusd_file_path = "NOKUSD.csv"
    plot_prices(brent_file_path, nokusd_file_path)

if __name__ == "__main__":
    main()

import pandas as pd
import matplotlib.pyplot as plt
import matplotlib.dates as mdates

# This script plots the RUB/EUR exchange rates.

# Read the CSV file
file_path = 'RUB_EUR.csv'
data = pd.read_csv(file_path)

# Convert 'Date' column to datetime
data['Date'] = pd.to_datetime(data['Date'], format='%m/%d/%Y')

# Filter the data for the year 2022
data = data[(data['Date'] >= '2022-01-01') & (data['Date'] <= '2022-12-31')]

# Sort the data by date
data = data.sort_values('Date')

# Extract 'Date' and 'Price' columns
dates = data['Date']
prices = data['Price'].astype(float)

# Plot the data
plt.figure(figsize=(12, 6))
plt.plot(dates, prices, label='RUB/EUR Price')

# Set the date format on the x-axis to day and month with weekly resolution
plt.gca().xaxis.set_major_locator(mdates.DayLocator(interval=7))
plt.gca().xaxis.set_major_formatter(mdates.DateFormatter('%d-%m'))

# Set the limits to start and end exactly in 2022
plt.xlim(pd.Timestamp('2022-01-01'), pd.Timestamp('2022-12-31'))

# Make the grid less visible
plt.grid(True, which='both', linestyle='--', linewidth=0.5, alpha=0.7)

# Reduce the number of x-axis labels to every 4th point
for i, label in enumerate(plt.gca().xaxis.get_ticklabels()):
    if i % 4 != 0:
        label.set_visible(False)

plt.xlabel('Date (DD-MM)', fontsize=16)
plt.ylabel('RUB/EUR', fontsize=16)
plt.title('RUB/EUR Exchange Rate in 2022', fontsize=18)
plt.legend(fontsize=14)
plt.xticks(fontsize=14)
plt.yticks(fontsize=14)
plt.tight_layout()
plt.show()

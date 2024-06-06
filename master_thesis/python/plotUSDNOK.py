import pandas as pd
import matplotlib.pyplot as plt
import matplotlib.dates as mdates

# This script plots the USD/NOK exchange rates.

# Read the sorted CSV file
file_path = 'USDNOK_april_2024_sorted.csv'
data = pd.read_csv(file_path, header=None)

# Rename the columns for better readability
data.columns = ['Date', 'Time', 'Open', 'High', 'Low', 'Close', 'Volume', 'Datetime']

# Convert 'Datetime' column to datetime
data['Datetime'] = pd.to_datetime(data['Datetime'])

# Ensure data starts from 00:00 on the 7th of April
start_date = '2024-04-07 17:16'
end_date = '2024-04-12 16:59'
mask = (data['Datetime'] >= start_date) & (data['Datetime'] <= end_date)
filtered_data = data.loc[mask]
print(filtered_data)

# Extract 'Datetime' and 'Close' columns
dates = filtered_data['Datetime']
close_prices = filtered_data['Close']

# Plot the data
plt.figure(figsize=(12, 6))
plt.plot(dates, close_prices)

# Set higher resolution for the x-axis labels
plt.gca().xaxis.set_major_locator(mdates.HourLocator(interval=3))
plt.gca().xaxis.set_major_formatter(mdates.DateFormatter('%d-%H'))

# Set the limits to start and end exactly in the specified date range
plt.xlim(pd.Timestamp(start_date), pd.Timestamp(end_date))

# Make the grid less visible
plt.grid(True, which='both', linestyle='--', linewidth=0.5, alpha=0.7)

# Reduce the number of x-axis labels
for i, label in enumerate(plt.gca().xaxis.get_ticklabels()):
    if i % 3 != 0:
        label.set_visible(False)

plt.xlabel('Date and Time (DD-HH)', fontsize=18)
plt.ylabel('USD/NOK', fontsize=18)
plt.title('USD/NOK Exchange Rate from 7th to 12th April 2024', fontsize=20)
plt.xticks(fontsize=14)
plt.yticks(fontsize=14)
plt.tight_layout()
plt.show()

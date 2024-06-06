import pandas as pd

# This script sorts the USD/NOK exchange rate data.

# Read the CSV file
file_path = 'USDNOK_april_2024.csv'
data = pd.read_csv(file_path, header=None)

# Rename the columns for better readability
data.columns = ['Date', 'Time', 'Open', 'High', 'Low', 'Close', 'Volume']

# Convert 'Date' and 'Time' columns to a single datetime column
data['Datetime'] = pd.to_datetime(data['Date'] + ' ' + data['Time'], format='%Y.%m.%d %H:%M')

# Sort the data by the 'Datetime' column
sorted_data = data.sort_values(by='Datetime')

# Save the sorted data to a new CSV file
sorted_file_path = 'USDNOK_april_2024_sorted.csv'
sorted_data.to_csv(sorted_file_path, index=False, header=False)

print(f'Sorted data saved to {sorted_file_path}')

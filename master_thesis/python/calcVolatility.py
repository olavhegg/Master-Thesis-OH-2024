import csv

# This script calculates the volatility of currency exchange rates based on provided data.

def calculate_average_volatility(csv_file):
    with open(csv_file, 'r') as file:
        reader = csv.reader(file)
        next(reader)  # Skip header row
        next(reader)  # Skip first data row
        volatilities = []
        for row in reader:
            volatility = abs(float(row[-2].strip(',')[:-1]))  # Extracting absolute change percent from last element
            volatilities.append(volatility)
    
    average_volatility = sum(volatilities) / len(volatilities)
    return average_volatility

if __name__ == "__main__":
    csv_file = "EURNOK_historical_data.csv"
    try:
        average_volatility = calculate_average_volatility(csv_file)
        print("Average Volatility (%):", average_volatility)
    except FileNotFoundError:
        print("File not found.")
    except Exception as e:
        print("An error occurred:", e)

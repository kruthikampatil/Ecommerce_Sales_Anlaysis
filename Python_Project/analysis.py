import pandas as pd
import numpy as np

df = pd.read_csv("python/Cleaned_Ecommerce_Dataset.csv") # Load dataset

print("First 5 Rows:") # Show first 5 rows
print(df.head())

total_sales = np.sum(df["Sales"]) # Total Sales
print("\nTotal Sales:", total_sales)

average_sales = np.mean(df["Sales"]) # Average Sales
print("\nAverage Sales:", average_sales)

sales_by_region = df.groupby("Region")["Sales"].sum() # Sales by Region

print("\nSales By Region:")
print(sales_by_region)

profit_by_region = df.groupby("Region")["Profit"].sum() # Profit by Region

print("\nProfit By Region:")
print(profit_by_region)

monthly_sales = df.groupby("Order Date")["Sales"].sum() # Monthly Sales Trend

print("\nMonthly Sales Trend:")
print(monthly_sales.head())
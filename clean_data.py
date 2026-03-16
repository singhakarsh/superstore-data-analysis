import pandas as pd

df = pd.read_csv('superstore.csv', encoding='latin-1')

print("Rows and Columns:", df.shape)
print("\nFirst 5 rows:")
print(df.head())
print("\nColumn info:")
print(df.info())
print("\nMissing values:")
print(df.isnull().sum())

# Question 1 - Total sales by Region
print("\n--- Total Sales by Region ---")
print(df.groupby('Region')['Sales'].sum().round(2))

# Question 2 - Top 5 products by Sales
print("\n--- Top 5 Products by Sales ---")
print(df.groupby('Product Name')['Sales'].sum().sort_values(ascending=False).head())

# Question 3 - Total Profit by Category
print("\n--- Profit by Category ---")
print(df.groupby('Category')['Profit'].sum().round(2))

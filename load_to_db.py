import pandas as pd
from sqlalchemy import create_engine

# Load your CSV
df = pd.read_csv('superstore.csv', encoding='latin-1')

# Connect to PostgreSQL
engine = create_engine('postgresql://postgres:akarsh18@localhost:5432/superstore')

# Load data into PostgreSQL
df.to_sql('orders', engine, if_exists='replace', index=False)

print("Data loaded successfully!")

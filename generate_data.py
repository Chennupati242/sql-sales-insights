import pandas as pd
import numpy as np
from datetime import datetime, timedelta

# Let's make 500,000 rows
num_rows = 500000

print("Generating 500,000 rows")

data = {
    'customer_id': np.random.randint(1, 10001, size=num_rows), # 10,000 unique customers
    'product_id': np.random.randint(1, 501, size=num_rows),    # 500 unique products
    'sale_date': [datetime(2025, 1, 1) + timedelta(days=np.random.randint(0, 365)) for _ in range(num_rows)],
    'quantity': np.random.randint(1, 10, size=num_rows),
    'total_amount': np.random.uniform(20.0, 500.0, size=num_rows).round(2)
}

df = pd.DataFrame(data)
df.index.name = 'order_id' #primary key
df.to_csv('huge_sales_data.csv')

print("'huge_sales_data.csv' ")
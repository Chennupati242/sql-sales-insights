# SQL-Based Sales and Customer Insights:

## Project Overview
In this project, I built a relational database from scratch to analyze **500,000+ sales records**. I focused on identifying revenue trends and high-value customers using advanced SQL techniques.

## Tech Stack
* **Database:** PostgreSQL
* **Tool:** TablePlus
* **Data Generation:** Python (Pandas/NumPy)

## Key Insights
* **Daily Revenue:** Successfully calculated daily revenue patterns, showing peak sales days.
* **Customer Behavior:** Identified the top 5 high-value customers contributing significantly to total revenue.
* **Scale:** Handled a dataset of 500,000 rows with optimized SQL queries.

## How to Run
1. Run `schema.sql` to build the database structure.
2. Run `generate_data.py` to create the 500k row dataset.
3. Import the CSV into PostgreSQL and run `analysis.sql`.

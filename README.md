# Sales Performance Analysis (Excel + SQL)

An analysis of 20 sales orders from January to February 2025, built in Excel and then loaded into a SQLite database to run SQL queries on the same data.

## Tools
- Excel (dashboard, pivots, charts)
- SQL (SQLite)
- DBeaver

## Files
- `Sales_Performance_Analytics_Dashboard(Raw_Data) (1).csv`: the raw order data
- `sales_analysis.db`: the SQLite database
- `setup.sql`: creates the table and converts the dates
- `analysis_queries.sql`: the analysis queries
- `Sales_Performance_Analytics_Dashboard.xlsx`: the Excel dashboard

## Data cleaning
Dates in the CSV were in DD/MM/YYYY format. I imported them as text, then converted them to YYYY-MM-DD using SQL string functions so they could be grouped by month.

## Key findings
- Total revenue was 10,840 and total profit was 3,895.
- London had the highest revenue of any region (3,210).
- Furniture had a higher profit margin (41.7%) than Electronics (34.5%).
- February revenue (5,990) was higher than January (4,850).

## How to recreate
1. Create a new SQLite database in DBeaver.
2. Run the `CREATE TABLE` statement in `setup.sql`.
3. Import the CSV into the `sales` table.
4. Run the `ALTER TABLE` and `UPDATE` statements in `setup.sql` to create the clean date column.
5. Run the  queries in `analysis_queries.sql`.

# Week 2 Data Analyst Project

## Project Overview
This repository contains my Week 2 Data Analyst coursework focused on **SQL and Python-based data analysis using Pandas**.

The project uses a sales dataset containing **200 records and 10 columns** and covers data inspection, data-quality checks, aggregation, sorting, correlation analysis, SQL filtering, grouping, joins, subqueries, and conditional classification.

## Objectives
- Load and inspect the sales dataset using Python and Pandas.
- Check for missing values and duplicate records.
- Analyze revenue by category.
- Sort and summarize sales data.
- Calculate correlations between numerical variables.
- Practice SQL `SELECT`, `WHERE`, `GROUP BY`, and `ORDER BY`.
- Use `SUM()`, `AVG()`, and `COUNT()`.
- Identify top customers by total revenue.
- Analyze revenue by region.
- Practice `CASE`, subqueries, and joins.

## Tools & Technologies
- Python
- Pandas
- Matplotlib
- Seaborn
- SQL
- SQLite
- DB Browser for SQLite
- GitHub

## Dataset
The dataset contains **200 rows and 10 columns**:

| Column | Description |
|---|---|
| `order_id` | Unique order identifier |
| `customer_name` | Customer name |
| `order_date` | Order date |
| `category` | Main product category |
| `sub_category` | Product sub-category |
| `product_name` | Product name |
| `quantity` | Quantity ordered |
| `unit_price` | Price per unit |
| `total_price` | Total order value |
| `region` | Sales region |

### Data Quality
- Records: **200**
- Missing values: **0**
- Duplicate records: **0**

## Python Analysis
The Python work includes:
1. Loading the CSV with Pandas.
2. Inspecting dataset structure and basic information.
3. Checking missing values and duplicates.
4. Grouping sales by category.
5. Calculating total revenue by category.
6. Sorting by multiple columns.
7. Creating a correlation matrix.

### Revenue by Category

| Category | Total Revenue |
|---|---:|
| Furniture | 714,399 |
| Grocery | 672,147 |
| Electronics | 549,302 |
| Clothing | 484,259 |

### Correlation Highlights
- `quantity` vs `unit_price`: **0.0480**
- `quantity` vs `total_price`: **0.6552**
- `unit_price` vs `total_price`: **0.6713**

## SQL Analysis

### Basic SELECT
```sql
SELECT * FROM sales;
```

### WHERE Filtering
```sql
SELECT *
FROM sales
WHERE total_price > 10000;
```

### GROUP BY and SUM
```sql
SELECT
    category,
    SUM(total_price) AS total_revenue
FROM sales
GROUP BY category
ORDER BY total_revenue DESC;
```

### Aggregate Functions
```sql
SELECT
    COUNT(*) AS total_orders,
    AVG(total_price) AS average_order_value,
    SUM(total_price) AS total_revenue
FROM sales;
```

### Top 10 Customers
```sql
SELECT
    customer_name,
    SUM(total_price) AS total_revenue
FROM sales
GROUP BY customer_name
ORDER BY total_revenue DESC
LIMIT 10;
```

### CASE Statement
```sql
SELECT
    order_id,
    customer_name,
    total_price,
    CASE
        WHEN total_price >= 10000 THEN 'High'
        WHEN total_price >= 5000 THEN 'Medium'
        ELSE 'Low'
    END AS order_category
FROM sales;
```

The project also includes a subquery for orders above the average order value and a JOIN example.

## Key Results

| Metric | Result |
|---|---:|
| Total Orders | 200 |
| Total Revenue | 2,420,107 |
| Average Order Value | 12,100.53 |

### Top 10 Customers by Revenue

| Rank | Customer | Revenue |
|---:|---|---:|
| 1 | Lynn Garrison | 47,940 |
| 2 | Debbie Turner | 44,990 |
| 3 | Megan Charles | 44,620 |
| 4 | Michelle Beltran | 42,471 |
| 5 | Rick Sanford | 41,211 |
| 6 | Patrick Watson | 37,680 |
| 7 | Christopher Meyer | 37,320 |
| 8 | Todd Barnes | 36,152 |
| 9 | Stephanie Martinez | 34,576 |
| 10 | Kimberly Alvarado | 31,752 |

## Project Structure
```text
Week-2-Data-Analyst-Project/
│
├── data/
│   ├── SQL_Sales_Dataset_200_Rows.csv
│   └── SQL_Sales_Dataset_200_Rows.xlsx
│
├── sql/
│   ├── Week_2_SQLite_Queries.sql
│   └── Week_2_Sales_SQLite.db
│
├── python/
│   └── Week_2_Python_Code.py
│
├── report/
│   └── Week_2_Complete_Assignment.docx
│
└── README.md
```

## How to Run the SQL Project
1. Install **DB Browser for SQLite**.
2. Open `Week_2_Sales_SQLite.db`.
3. Select **Execute SQL**.
4. Open or copy queries from `Week_2_SQLite_Queries.sql`.
5. Run the queries and review the results.

**Note:** The SQLite database already contains the `sales` table, so you do not need to create it manually.

## How to Run the Python Project
1. Install Python.
2. Install the required packages:
```bash
pip install pandas matplotlib seaborn openpyxl
```
3. Place the CSV file in the `data` folder.
4. Open `Week_2_Python_Code.py`.
5. Run the program and review the analysis and visualizations.

## Conclusion
This project demonstrates practical data-analysis skills using **SQL and Python**, including data-quality checking, sales aggregation, customer analysis, regional analysis, conditional classification, subqueries, joins, and correlation analysis.

## Author
**Data Analyst Course — Week 2 Project**
README.md
Displaying README.md.

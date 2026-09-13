import pandas as pd
import matplotlib.pyplot as plt

# Load CSV
df = pd.read_csv("SQL_Sales_Dataset_200_Rows.csv")

# Basic information
print(df.head())
print(df.info())
print(df.describe(include="all"))

# Missing values and duplicates
print(df.isnull().sum())
print("Duplicates:", df.duplicated().sum())

# Handle missing values (dataset has none)
df = df.drop_duplicates()

# Group by category and total revenue
category_revenue = (
    df.groupby("category", as_index=False)["total_price"]
      .sum()
      .sort_values("total_price", ascending=False)
)
print(category_revenue)

# Sort by multiple columns
sorted_df = df.sort_values(
    by=["category", "total_price"],
    ascending=[True, False]
)
print(sorted_df.head(10))

# Correlation matrix
correlation_matrix = df[["quantity", "unit_price", "total_price"]].corr()
print(correlation_matrix)

# Optional visualization
category_revenue.plot(
    x="category", y="total_price", kind="bar",
    legend=False, title="Total Revenue by Category"
)
plt.ylabel("Revenue")
plt.tight_layout()
plt.show()

# Interactive Sales Dashboard with SQL and Power BI

This project demonstrates the creation of an interactive sales dashboard using SQL for data preparation and Power BI for visualization. The dashboard provides insights into sales performance, trends, and key metrics.

## Project Objective

To develop an interactive sales dashboard that:

* Visualizes sales performance across different dimensions (region, product, time).
* Highlights sales trends and patterns.
* Enables interactive exploration of data through filters and slicers.

## Outcome

An interactive sales dashboard in Power BI with the following visualizations:

* **Sales by Region:**  (Bar chart/Map)
* **Sales by Product:** (Bar chart)
* **Profit by Region:** (Bar chart/Map)
* **Profit by Product:** (Bar chart)
* **Sales Trend Over Time:** (Line graph)
* **Profit Trend Over Time:** (Line graph)
* **Sales by Customer Segment:** (Pie chart/Bar chart)
* **Sales by Sales Channel:** (Pie chart/Bar chart)
* **Top Customers by Sales:** (Table/Bar chart)
* **Detailed breakdown of sales and profit per product and region:** (Table/Matrix)
* ![image](https://github.com/user-attachments/assets/a1231381-e8b4-41de-b026-d1c5e1073f76)
* ![image](https://github.com/user-attachments/assets/a673e88d-aa6c-4dfd-8282-0a979d1f40c2)


## Steps

1. **Data Gathering:** Collect sales data from relevant sources (databases, Excel files, etc.).
2. **Data Cleaning and Preprocessing (SQL):**
   * Use SQL queries to clean the data.
   * Handle missing values (e.g., imputation, removal).
   * Remove duplicate records.
   * Transform data into the required format.
3. **Data Aggregation (SQL):**
   * Write SQL queries to aggregate data by:

     * Time (e.g., year, quarter, month)
     * Region
     * Product
     * Customer segment
     * Sales channel
4. **Data Import (Power BI):**
   * Import the cleaned and aggregated data from SQL into Power BI Desktop.
5. **Dashboard Creation (Power BI):**
   * **Visualizations:** Create various visualizations (bar charts, line graphs, pie charts, tables, maps) to represent the data.
   * **Filters and Slicers:** Add filters and slicers to enable interactive data exploration.
   * **Dashboard Design:** Arrange visualizations in a clear and informative layout.
   * **Tooltips and Interactivity:**  Enhance the dashboard with tooltips and drill-down capabilities for detailed insights.

## SQL Queries (Examples)

Include examples of the SQL queries used for data cleaning and aggregation. For instance:

```sql
-- Example: Aggregate sales by region and product
SELECT 
    r.RegionName,
    p.ProductName,
    SUM(s.SalesAmount) AS TotalSales
FROM 
    Sales s
JOIN 
    Region r ON s.RegionID = r.RegionID
JOIN 
    Product p ON s.ProductID = p.ProductID
GROUP BY 
    r.RegionName,
    p.ProductName;

Power BI Dashboard Screenshots
Include screenshots of your Power BI dashboard to showcase the visualizations and interactivity.

Tools Used
SQL Server Management Studio (SSMS) or any other SQL editor
Power BI Desktop
Author
Rohit Kumar

Notes
This README provides a basic framework. You can customize it further by adding more details about your data sources, specific SQL techniques used, and any challenges faced during the project.
Make sure to replace the example SQL queries with your actual queries.
Clearly label your dashboard screenshots and provide brief descriptions.

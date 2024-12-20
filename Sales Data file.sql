CREATE DATABASE sales1;
USE sales1;
CREATE TABLE sales_report (
    Date DATE,
    Region VARCHAR(20),
    Product VARCHAR(20),
    Sales_Amount INT,
    Quantity INT,
    Cost INT,
    Profit INT,
    Customer_ID VARCHAR(10),
    Customer_Segment VARCHAR(20),
    Sales_Channel VARCHAR(20),
    Discount INT,
    Is_Returned VARCHAR(3)
);

-- Insert data into the table
INSERT INTO sales_report VALUES
('2023-01-01', 'North', 'Product A', 1000, 10, 700, 300, 'C001', 'Retail', 'Online', 50, 'No'),
('2023-01-01', 'South', 'Product B', 1500, 15, 900, 600, 'C002', 'Wholesale', 'Offline', 75, 'Yes'),
('2023-01-02', 'East', 'Product A', 1200, 12, 800, 400, 'C003', 'Retail', 'Online', 60, 'No'),
('2023-01-02', 'West', 'Product C', 800, 8, 500, 300, 'C004', 'Wholesale', 'Offline', 40, 'No'),
('2023-01-03', 'North', 'Product B', 1600, 16, 1000, 600, 'C005', 'Retail', 'Online', 50, 'No'),
('2023-01-03', 'South', 'Product C', 1400, 14, 900, 500, 'C006', 'Wholesale', 'Offline', 70, 'No'),
('2023-01-04', 'East', 'Product A', 1300, 13, 850, 450, 'C007', 'Retail', 'Online', 65, 'Yes'),
('2023-01-04', 'West', 'Product B', 900, 9, 600, 300, 'C008', 'Wholesale', 'Offline', 30, 'No'),
('2023-01-05', 'North', 'Product C', 1100, 11, 700, 400, 'C009', 'Retail', 'Online', 55, 'No'),
('2023-01-05', 'South', 'Product A', 1700, 17, 1100, 600, 'C010', 'Wholesale', 'Offline', 80, 'No'),
('2023-01-06', 'East', 'Product B', 1800, 18, 1200, 600, 'C011', 'Retail', 'Online', 70, 'No'),
('2023-01-06', 'West', 'Product C', 1000, 10, 650, 350, 'C012', 'Wholesale', 'Offline', 45, 'Yes'),
('2023-01-07', 'North', 'Product A', 2000, 20, 1300, 700, 'C013', 'Retail', 'Online', 90, 'No'),
('2023-01-07', 'South', 'Product B', 2100, 21, 1400, 700, 'C014', 'Wholesale', 'Offline', 95, 'No'),
('2023-01-08', 'East', 'Product C', 1900, 19, 1250, 650, 'C015', 'Retail', 'Online', 85, 'No'),
('2023-01-08', 'West', 'Product A', 2200, 22, 1400, 800, 'C016', 'Wholesale', 'Offline', 100, 'No'),
('2023-01-09', 'North', 'Product B', 2300, 23, 1500, 800, 'C017', 'Retail', 'Online', 110, 'No'),
('2023-01-09', 'South', 'Product C', 2400, 24, 1600, 800, 'C018', 'Wholesale', 'Offline', 120, 'No'),
('2023-01-10', 'East', 'Product A', 2500, 25, 1700, 800, 'C019', 'Retail', 'Online', 130, 'No'),
('2023-01-10', 'West', 'Product B', 2600, 26, 1800, 800, 'C020', 'Wholesale', 'Offline', 140, 'No');

-- Checkig if the table got the data
SELECT * FROM sales_report;

-- Cleaning Phase
UPDATE sales_report
SET Date_Formatted = STR_TO_DATE(Date, '%Y-%m-%d')
LIMIT 20;

-- As this dataset is now clean, we can directly proceed towards aggregating the dataset

-- Sales by Region
SELECT Region, SUM(Sales_Amount) AS Total_Sales
FROM sales_report
GROUP BY Region;

-- Profit by Product
SELECT Product, SUM(Profit) AS Total_Profit
FROM sales_report
GROUP BY Product;

-- Sales Trend Over Time
SELECT Date_Formatted, SUM(Sales_Amount) AS Total_Sales
FROM sales_report
GROUP BY Date_Formatted
ORDER BY Date_Formatted;

-- Top selling Products
SELECT Product, SUM(Quantity) AS Total_Quantity
FROM sales_report
GROUP BY Product
ORDER BY Total_Quantity DESC
LIMIT 10;

-- Customer Segmentation Analysis
SELECT Customer_Segment, COUNT(*) AS Customer_Count, SUM(Sales_Amount) AS Total_Sales
FROM sales_report
GROUP BY Customer_Segment;

-- Sales Channel Performance
SELECT Sales_Channel, SUM(Sales_Amount) AS Total_Sales
FROM sales_report
GROUP BY Sales_Channel;
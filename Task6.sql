-- TASK 6: Sales Trend Analysis Using Aggregations
-- Dataset: Orders.csv + Details.csv
-- Orders: Order_ID, Order_Date (DD-MM-YYYY)
-- Details: Order_ID, Sales
-- Date conversion: DD-MM-YYYY → YYYY-MM-DD

-- Step 1: Extract MONTH from Order_Date (Orders only)
SELECT 
    strftime('%m', substr("Order_Date", 7, 4) || '-' || substr("Order_Date", 4, 2) || '-' || substr("Order_Date", 1, 2)) AS month
FROM Orders
LIMIT 10;

-- Step 2: GROUP BY year/month (Orders only)
SELECT 
    strftime('%Y', substr("Order_Date", 7, 4) || '-' || substr("Order_Date", 4, 2) || '-' || substr("Order_Date", 1, 2)) AS year,
    strftime('%m', substr("Order_Date", 7, 4) || '-' || substr("Order_Date", 4, 2) || '-' || substr("Order_Date", 1, 2)) AS month
FROM Orders
GROUP BY year, month
LIMIT 10;

-- Step 3: SUM() for revenue (JOIN Orders + Details)
SELECT 
    strftime('%Y', substr(o."Order_Date", 7, 4) || '-' || substr(o."Order_Date", 4, 2) || '-' || substr(o."Order_Date", 1, 2)) AS year,
    strftime('%m', substr(o."Order_Date", 7, 4) || '-' || substr(o."Order_Date", 4, 2) || '-' || substr(o."Order_Date", 1, 2)) AS month,
    SUM("d"."Profit") AS monthly_revenue
FROM Orders o
JOIN Details d ON o."Order_ID" = d."Order_ID"
GROUP BY year, month
LIMIT 10;

-- Step 4: COUNT(DISTINCT Order_ID) for volume (Orders only)
SELECT 
    strftime('%Y', date(substr("Order_Date", 7, 4) || '-' || substr("Order_Date", 4, 2) || '-' || substr("Order_Date", 1, 2))) AS year,
    strftime('%m', date(substr("Order_Date", 7, 4) || '-' || substr("Order_Date", 4, 2) || '-' || substr("Order_Date", 1, 2))) AS month,
    COUNT(DISTINCT "Order_ID") AS order_volume
FROM Orders
GROUP BY year, month
LIMIT 10;

-- Step 5: Combine revenue + volume, sorted (JOIN needed for revenue)
SELECT "Order_Date" FROM "Orders" LIMIT 5;

-- Step 6: Limit results for a specific time period (JOIN needed for revenue)
SELECT "Order_Date", "Order_ID" FROM "Orders" LIMIT 5;
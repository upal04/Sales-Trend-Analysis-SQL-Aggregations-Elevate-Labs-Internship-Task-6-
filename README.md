📊 Task 6: Sales Trend Analysis Using Aggregations (ELEVATE LABBS INTERNSHIP)
🧠 Objective
Analyze monthly revenue and order volume trends using SQL aggregations on an online sales dataset.

🛠️ Tools Used
- SQLite (via strftime() for date extraction and formatting)
- SQL for data manipulation and aggregation
- Dataset:
- Orders.csv: Contains Order_ID, Order_Date (in DD-MM-YYYY format)
- Details.csv: Contains Order_ID, Sales
  
📁 Files Included
- task6_sales_trend.sql: SQL script with all steps
- Orders.csv, Details.csv: Sample datasets
- screenshots/: screenshots of query results
- README.md: This documentation
  
📌 Key Steps & Logic
1. 📅 Date Conversion
Converted Order_Date from DD-MM-YYYY to YYYY-MM-DD using string manipulation for compatibility with strftime().
<img width="2879" height="1799" alt="Taks 6 A" src="https://github.com/user-attachments/assets/4f5f1205-72b9-4f53-a1a9-324710caa2d9" />

2. 📆 Monthly & Yearly Grouping
Used strftime('%Y') and strftime('%m') to extract year and month from formatted dates.
<img width="2879" height="1799" alt="Task 6 B" src="https://github.com/user-attachments/assets/f46f56a8-4238-4f80-bb58-897eed26981c" />

3. 💰 Monthly Revenue
Joined Orders and Details tables on Order_ID, then used SUM(Sales) to calculate monthly revenue.
<img width="2879" height="1799" alt="Task 6 C" src="https://github.com/user-attachments/assets/c147e704-ea80-4815-861b-5174a1c7dc28" />

4. 📦 Monthly Order Volume
Grouped orders by month and year, using COUNT(DISTINCT Order_ID) to get unique order volume.
<img width="2879" height="1799" alt="Task 6 D" src="https://github.com/user-attachments/assets/505ba1ca-9df2-4d1a-8df9-43af45e0c676" />

5. 📈 Combined Revenue & Volume
Merged revenue and volume metrics by month/year to analyze trends and sort results chronologically.
<img width="2879" height="1799" alt="Task 6 E" src="https://github.com/user-attachments/assets/cff0dcaf-e952-4098-9f66-4ccc60d698f3" />

6. ⏳ Time Filtering
Applied filters to limit results to specific time periods for focused analysis.
<img width="2877" height="1799" alt="Task 6 F" src="https://github.com/user-attachments/assets/e7295b70-1e3b-4f35-89ac-cc05388973c9" />


❓ Interview Prep Highlights
- Difference between COUNT(*) vs COUNT(DISTINCT col)
- Handling NULL values in aggregates
- Role of GROUP BY vs ORDER BY
- Extracting top 3 months by revenue using ORDER BY SUM(Sales) DESC LIMIT 3
  
✅ Outcome
- Learned how to group data by time dimensions
- Practiced SQL joins, aggregations, and filtering
- Built a reusable script for sales trend analysis

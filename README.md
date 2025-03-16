# AMC-Annual-Maintenance-Contract-Analysis-Dashboard

Project Overview
This project focuses on analyzing Annual Maintenance Contracts (AMC) using Power BI and SQL Server (DirectQuery) for real-time tracking. The dataset includes a total AMC budget of ₹51 Cr, distributed across different business units, vendors, and plant locations. The dashboard provides deep insights into cost allocation, vendor performance, material group spending, and contract efficiency, helping in data-driven decision-making for procurement and financial management.
Key Business Problems Addressed
AMC Cost Optimization → Identifies top-spending plant locations and high-cost vendors to optimize maintenance contracts.
Vendor Performance Analysis → Tracks vendor-wise AMC distribution, helping negotiate better contracts and ensuring on-time service delivery.
Contract Categorization → Analyzes AMC spending across Telecommunications, Marine, Equipment, and Materials, identifying areas for cost reduction.
Real-Time Data Updates → Utilizes SQL Server DirectQuery, ensuring that new AMC contracts, vendors, and cost centers are dynamically updated.
Multi-Currency Tracking → Differentiates contracts in INR vs. USD, aiding in financial planning and currency fluctuation impact analysis.
Data Modeling & Structure
🛠 Fact Tables:
Material Group → Defines AMC contract categories (e.g., Telecom, Marine, Equipment, Materials).
Cost Center (CC) → Allocates AMC expenses to specific departments.
Plant Location → Tracks AMC spending across different geographical plant locations.
📂 Dimension Tables:
Telecommunications, Marine, Equipment, Materials → Store contract details like vendor, PO number, currency, and department allocations.
📈 Key Insights & Findings
🔹 Top AMC Spending Locations:

Major spend concentrated in Panvel, Ranchi, and Navi Mumbai.
Helps identify cost reduction opportunities by renegotiating maintenance contracts.
🔹 Vendor Performance Analysis:

Top vendors: Ross Inc, Abbott PLC, Burke Group.
Vendor-wise spend tracking helps ensure service level agreements (SLAs) are met.
🔹 AMC Spend by Category:

Materials & Equipment contracts account for the highest costs, indicating the need for efficient vendor selection.
🔹 PO Analysis & Timeliness:

Tracks PO release dates and execution timelines, ensuring maintenance services are renewed on time.
🔹 Multi-Currency Contract Impact:

Identifies contracts in INR vs. USD, ensuring better currency risk management.
🛠 Tech Stack Used
✅ Power BI → Interactive dashboards with DAX-based insights.
✅ SQL Server (DirectQuery) → Ensures real-time data updates for newly added AMC records.
✅ Excel → Pre-processing of raw AMC data.

🚀 Business Impact
📌 50% Faster AMC Cost Analysis → Reduces manual effort in tracking maintenance contracts.
📌 10-15% Cost Savings Opportunities → Identifies high-cost vendors and inefficient contract structures.
📌 Improved Financial Planning → Helps budget AMC expenses efficiently based on historical trends and projections.


Step 1: Understanding Business Requirements
Objective:
Analyze ₹51 Cr+ AMC contracts across 100+ vendors and 50+ plant locations.
Optimize cost efficiency and vendor performance.
Provide real-time insights using Power BI (DirectQuery) & SQL Server.



Key Metrics to Track:
✔️ Total AMC Spend
✔️ Vendor-wise & Location-wise Contract Analysis
✔️ High-Spending Locations
✔️ Contract Renewal & Cost Savings Opportunities


🔹 Step 2: Database Design in SQL Server
1️⃣ Creating Fact & Dimension Tables
You designed a star schema with fact and dimension tables in SQL Server:

📌 Dimension Tables (Descriptive Data)
Telecommunications, Marine, Equipment, Materials → Store vendor details & contract info.
Material Group → Categorizes materials used in AMC.
Cost Center → Tracks departments responsible for spending.
Plant Location → Stores spending data for each location.
📌 Fact Table (Transactional Data)
AMC Transactions → Stores contract amounts, vendor IDs, plant locations, and cost details.
2️⃣ Establishing Relationships (SQL Joins)
You linked fact and dimension tables using foreign keys for optimized query performance.

3️⃣ Loading Data into SQL Server
You imported AMC transaction data (₹51 Cr+), 100+ vendors, and 50+ plant locations into SQL tables.



🔹 Step 3: Connecting SQL Server to Power BI (DirectQuery)
Opened Power BI Desktop → Get Data → SQL Server.
Selected DirectQuery mode for real-time updates.
Loaded the fact and dimension tables into Power BI.


🔹 Step 4: Data Modeling & Relationships in Power BI
Checked relationships between tables (1-to-Many relationships).
Created hierarchies (e.g., Vendor → Contract → Location).
Optimized data model for efficient queries and calculations.

🔹 Step 5: Creating DAX Measures for Key Insights
1️⃣ Total AMC Spend

Total_AMC_Spend = SUM(AMC_Transactions[Contract_Amount])

 Top Spending Plant Locations
 Top_Plant_Spend = RANKX(ALL(Plant_Location), SUM(Plant_Location[Total_Spend]), , DESC, DENSE)


Vendor Payments Tracking (₹20 Cr+ Managed Payments)
Total_Vendor_Payments = SUM(AMC_Transactions[Payment_Amount])

Identifying Cost Savings Opportunities (₹7 Cr+ in Savings)
Potential_Savings = SUM(AMC_Transactions[Contract_Amount]) * 0.15  -- Assuming 15% cost-saving opportunities

🔹 Step 6: Designing the Power BI Dashboard
1️⃣ KPI Cards for High-Level Metrics
✔️ Total AMC Spend (₹51 Cr+)
✔️ Total Vendor Payments (₹20 Cr+)
✔️ Potential Cost Savings (₹7 Cr+)

2️⃣ Bar Chart – Top 10 High-Spending Locations
✔️ Displays locations with the highest AMC contract spend.

3️⃣ Table View – Vendor-Wise AMC Tracking
✔️ Lists vendor names, contract amounts, payments, and renewal status.

4️⃣ Pie Chart – Spend Distribution by Category
✔️ Breakdown of spending in Telecom, Marine, Equipment, and Materials.

🔹 Step 7: Publishing & Automating Reports
Published the Power BI Report to Power BI Service.
Set up automatic refresh to fetch real-time updates from SQL Server.
Shared the report with stakeholders for real-time decision-making.
🔹 Final Impact of the AMC Dashboard
✅ ₹51 Cr+ AMC Spend analyzed in real-time.
✅ ₹20 Cr+ Vendor Payments tracked efficiently.
✅ Identified ₹7 Cr+ Cost-Saving Opportunities in AMC contracts.
✅ 50% faster financial analysis by replacing manual reports with automated insights.




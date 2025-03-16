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


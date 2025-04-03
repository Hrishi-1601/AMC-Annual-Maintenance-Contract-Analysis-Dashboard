# AMC-Annual-Maintenance-Contract-Analysis-Dashboard

🚀 Project Overview
This Power BI dashboard provides a comprehensive analysis of AMC (Annual Maintenance Contracts), focusing on cost savings, expiring contracts, vendor performance, and high-cost locations. The dataset was created from scratch, and the project was built end-to-end, covering data modeling, visualization, and business problem-solving.

🎯 Key Business Problems Solved
✅ Tracking Expiring Contracts – Preventing service disruptions by identifying contracts that require renewal.
✅ Cost Optimization – Identifying potential savings by optimizing vendor contracts and maintenance costs.
✅ Vendor Performance Analysis – Identifying high-risk vendors contributing to cost overruns.
✅ Location-Based Spend Analysis – Understanding which plant locations have the highest AMC spend and need resource reallocation.


🔹 Key Metrics & KPIs (DAX Measures Used)
Total AMC Value = ₹500 Crores

Expiring Contracts Valuation = ₹431 Million

Potential Cost Savings = ₹771 Million

Top 5 High-Cost Vendors – Identifies vendors with the highest AMC spend.

PO Status Breakdown – Active vs. Expired contracts.

Annual AMC Spend Trend – Year-over-year analysis of AMC expenses.

🔹 Three Key Insights from the Dashboard
1️⃣ Expiring Contracts Pose a Major Risk
Total Expiring Contracts: ₹431 million

A significant portion of AMC contracts are near expiry, which means potential operational disruptions if not renewed.

Action Plan:

Prioritize high-value contracts for renewal.

Identify alternative vendors in case of non-renewals.

2️⃣ Cost Optimization Can Save ₹771 Million
Your analysis shows that potential cost savings of ₹771 million exist by optimizing vendor selection and contract negotiations.

High-cost vendors contribute the most to AMC spend—renegotiating with them can reduce expenses.

Action Plan:

Reassess vendor pricing models.

Leverage bulk discounts or alternative sourcing.

3️⃣ Top 5 Plant Locations Drive 80% of AMC Spend
A few plant locations contribute to the majority of AMC expenses.

Trend: Higher AMC value = Higher maintenance cost.

Action Plan:

Assess whether specific locations need cost-cutting.

Reallocate resources to balance maintenance across regions.

🔹 How the Business Problem is Solved
Improved Decision-Making: By tracking expiring contracts, companies can act before disruptions occur.

Cost Savings & Vendor Optimization: Identifying high-risk vendors helps in cost control.

Better Resource Allocation: Pinpointing high-cost locations allows management to adjust spending efficiently.


Orders Table (Fact Table)

Captures business transactions (orders placed by customers).

Contains measurable values like OrderValue, DeliveryTime, and PriceHikeApplied.

Links to dimensions like Customers, Products, and Locations for analysis.

2️⃣ Revenue Table (Fact Table)

Stores monetary values related to different revenue streams (e.g., Delivery Fees, Advertising Revenue, Product Sales).

Revenue is an aggregatable metric—a key characteristic of fact tables.

Can be linked to the Orders Table using OrderID.

3️⃣ Costs Table (Fact Table)

Contains measurable financial data related to order fulfillment (e.g., Fixed Costs, Variable Costs).

Used to calculate profitability by comparing it against revenue.

Can be linked to OrderID for cost analysis per order.



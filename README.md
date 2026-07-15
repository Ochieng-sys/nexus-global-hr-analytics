# 🏢 Nexus Global Tech: Executive HR Analytics & Retention Workspace

## 📊 Business Problem & Objective
Nexus Global Technologies was facing an unexpected surge in voluntary employee departures across its core technical and sales operations. With recruitment and lost productivity costs averaging **$45,000 per lost employee**, the HR leadership team needed an automated, robust analytics solution to eliminate manual tracking and isolate real retention risks.

This repository hosts an end-to-end data architecture project that models, transforms, and visualizes **1,470 enterprise workforce records** to uncover hidden patterns behind employee turnover.

---

## 🛠️ Integrated Technology Pipeline

* **Data Engineering & Backend Database:** `MySQL Server` (Star-Schema Relational Optimization)
* **Analytics Engineering:** `Microsoft Power BI` (VertiPaq In-Memory Import Engine)
* **Statistical Logic Framework:** `Advanced DAX` (Data Analysis Expressions)
* **Academic Foundation:** Grounded in rigorous quantitative analysis standards driven by a **BSc in Statistics**.

---

## 🗄️ Relational Data Architecture (MySQL Star Schema)
To ensure system performance and scalable corporate reporting, the raw flat dataset was normalized into a relational Star Schema warehouse in MySQL before ingestion:

1. **`dim_job_details` (Dimension Table):** Serves as a categorical lookup array containing `EmployeeNumber` (Primary Key), Department structures, unique roles, job levels, and corporate travel metrics.
2. **`fact_employee_performance` (Central Fact Table):** Houses numerical keys, granular metrics, shifting income streams, and qualitative employee survey rankings connected via a Foreign Key relationship.

---

## 📈 Strategic Insights & Advanced DAX Infrastructure

### 1. The Core Enterprise Performance Indicators
Avoided raw column data dragging by building explicit, high-speed calculation measures within an isolated repository folder:
* **Workforce Volume:** `Total Headcount = COUNT(fact_employee_performance[EmployeeNumber])`
* **Absolute Turnover:** `Total Departures = SUM(fact_employee_performance[Attrition])`
* **Dynamic Attrition Index:** `Total Attrition Rate = DIVIDE([Total Departures], [Total Headcount], 0)` (Formatted as percentage to highlight the firm's **16.1% baseline turnover**).

### 2. Overcoming the Base Rate Fallacy (Count vs. Percentage Rate)
* **The Insight:** A baseline count check mistakenly implied that Job Satisfaction had no correlation with turnover because category 3 (High Satisfaction) showed a high count of departures. By shifting the Y-axis variable to a percentage rate (`Total Attrition Rate`), the true statistical trend emerged: **Low-satisfaction employees (Score 1) suffer an extreme attrition risk exceeding 20%**, which steadily stabilizes to **11%** as work environment satisfaction optimizes.

### 3. Income-Driven Turnover Realities
* **The Insight:** Leveraged conditional logic mapping metrics to reveal a sharp financial gap: Retained personnel earn an average monthly income of **KSh 6,800**, whereas departing assets average **KSh 4,700**—exposing a massive **KSh 2,100 pay deficit anomaly** driving workforce churn.

---

## 📂 Repository Contents
* 💾 `nexus_hr_data_architecture.sql` - Full relational table creation schemas, table constraints, and inner-join data query validations.
* 📊 `Nexus_Global_HR_Analytics.pbix` - Complete interactive Power BI desktop application file featuring advanced DAX scripts and UI/UX slicer tiles.
* 📁 `images/` - High-resolution dashboard interface captures showing dynamic workforce filtering.

---
*Feel free to clone the repository to inspect the data relationships, query syntax, or DAX measures!*

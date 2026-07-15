-- 1. Establish my project's data warehouse database
CREATE DATABASE nexus_hr_analytics;

-- 2. Direct MySQL to run all subsequent scripts inside this database
USE nexus_hr_analytics;
-- 3. Construct the dimension table for organizational mapping
CREATE TABLE dim_job_details (
    EmployeeNumber INT PRIMARY KEY,
    Department VARCHAR(50),
    JobRole VARCHAR(100),
    JobLevel INT,
    BusinessTravel VARCHAR(50),
    OverTime VARCHAR(5)
);
DESCRIBE dim_job_details;
-- 4. Construct the central fact table for metrics and performance indicators
CREATE TABLE fact_employee_performance (
    EmployeeNumber INT PRIMARY KEY,
    Attrition INT, -- Our clean 1s and 0s binary column
    Age INT,
    MonthlyIncome DECIMAL(10,2),
    DistanceFromHome INT,
    JobSatisfaction INT,
    WorkLifeBalance INT,
    EnvironmentSatisfaction INT,
    PerformanceRating INT,
    YearsAtCompany INT,
    FOREIGN KEY (EmployeeNumber) REFERENCES dim_job_details(EmployeeNumber)
);
DESCRIBE fact_employee_performance;
SELECT COUNT(*) FROM dim_job_details;
-- Relational analysis joining Fact and Dimension tables
SELECT 
    d.Department,
    COUNT(f.EmployeeNumber) AS Total_Headcount,
    SUM(f.Attrition) AS Total_Departures,
    ROUND(AVG(f.MonthlyIncome), 2) AS Avg_Monthly_Income
FROM fact_employee_performance f
INNER JOIN dim_job_details d 
    ON f.EmployeeNumber = d.EmployeeNumber
GROUP BY d.Department
ORDER BY Total_Departures DESC;

# Regional Disparities in Agricultural Wages and Household Income Analysis

## Overview
This project analyzes agricultural income distribution in the Philippines by examining regional disparities in agricultural wages and farm household income.

It aims to:

- Identify imbalances between labor wages and agricultural income  
- Assess whether farming income is sufficient to support household needs  
- Determine which regions experience the greatest income inequality and economic vulnerability  

**Note:** The dataset spans multiple years (2000–2016), so findings reflect historical trends rather than current income conditions and should be interpreted cautiously.

---

## Dataset

- **Rows:** 16 (regions)  
- **Columns:** 14  

### Key Features

- **Agricultural Wages (2015):**
  - All genders  
  - Male workers  
  - Female workers  

- **Farm Household Income (2002–2003):**
  - Farm income  
  - Off-farm income  
  - Non-farm income  
  - Other sources of income  

- **Average Rural Income (2000)**  
- **Employment Data (2016)**  

---

### Income Definitions

- **Farm Income:** Earnings from farming activities such as crop production and livestock raising  
- **Off-Farm Income:** Agriculture-related income outside direct farming activities (e.g., transport, milling, input supply)  
- **Non-Farm Income:** Income from non-agricultural jobs or businesses  
- **Other Sources:** Remittances, pensions, and government assistance  

---

## Tools Used

- **Python (Pandas, Jupyter Notebook):** Data cleaning, preprocessing, and feature engineering  
- **MySQL:** Data storage, transformation, and SQL-based analysis  
- **Power BI:** Data visualization and interactive dashboard creation  

---

## Project Workflow

### 1. Data Preparation (Python)

- Imported dataset using Pandas  
- Performed exploratory data analysis using `.info()` and `.describe()`  
- Checked and handled missing values using median imputation  
- Created new features:
  - Farm income share  
  - Off-farm income share  
  - Non-farm income share  
  - Other sources income share  

---

### 2. Database Integration (MySQL)

- Exported cleaned dataset into MySQL  
- Created a structured view (`my_table_view`) for standardized column names  
- Ensured consistency for SQL-based analysis  

---

### 3. Data Analysis (SQL)

Performed structured queries to answer key analytical questions:

- Comparison of regional income and wage levels  
- Gender wage gap analysis across regions  
- Relationship between farm income and agricultural wages  
- Assessment of income sufficiency using rural income benchmark  
- Disparity analysis using wage-to-income ratios  

---

### 4. Dashboard Development (Power BI)

An interactive dashboard was built to visualize insights, including:

- Regional comparison of farm income and wages  
- Wage disparity analysis (ratio-based)  
- Income composition (farm vs non-farm vs off-farm vs other sources)  
- Identification of top and bottom performing regions  

---

## Dashboard Insights

The Power BI dashboard highlights:

- Key performance indicators (income, wages, rural income benchmark)  
- Regional comparisons using bar charts and rankings  
- Wage-to-income disparity visualization  
- Household income composition breakdown  

---

## Key Results & Insights

- **Mismatch between productivity and wages:**  
  High farm income regions do not always provide higher wages to agricultural workers  

- **Income inequality across regions:**  
  Agricultural output does not always translate to fair worker compensation  

- **Dependence on non-farm income:**  
  Many households rely on off-farm, non-farm, and external income sources  

- **Farm income insufficiency:**  
  In most regions, farm income alone is not sufficient to meet rural income standards  

---

## How to Run the Project

### 1. Python (Data Cleaning)

- Open Jupyter Notebook  
- Run all preprocessing and feature engineering scripts  

---

### 2. MySQL

- Import cleaned dataset into MySQL  
- Run SQL scripts to create:
  - `my_table_view`  
  - Analytical queries (ranking, disparity, comparisons)  

---

### 3. Power BI

- Connect Power BI to MySQL database  
- Import `my_table_view` or query outputs  
- Build or open the `.pbix` dashboard file  
   
    


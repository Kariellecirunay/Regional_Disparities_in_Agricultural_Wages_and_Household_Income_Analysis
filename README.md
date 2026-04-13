# Regional_Disparities_in_Agricultural_Wages_and_Household_Income_Analysis

Overview
  This project analyzes agricultural income distribution in the Philippines by examining regional disparities in agricultural wages and farm household income. It aims to:
  Identify imbalances between labor wages and agricultural income
  Assess whether farming income is sufficient to support household needs
  Determine which regions experience the greatest income inequality and economic vulnerability
  
  Note: The dataset spans multiple years (2000–2016), so findings reflect historical trends and should be interpreted cautiously.
  
Dataset
  Rows: 16 (regions)
  Columns: 14
  Key Features:
    Agricultural Wages (2015)
      All genders, male, female
    Farm Household Income (2002–2003)
    Farm income
    Off-farm income
    Non-farm income
    Other income sources
    Average Rural Income (2000)
    Employment Data (2016)
  
  Income Definitions:
  Farm Income: Earnings from farming activities (crops, livestock)
  Off-Farm Income: Agriculture-related but outside direct farming (e.g., transport, milling)
  Non-Farm Income: Jobs/businesses outside agriculture
  Other Sources: Remittances, pensions, government aid

Tools Used
  Python (Pandas, Jupyter Notebook) - Data cleaning & preprocessing
  MySQL -  Analytical queries
  Power BI - Data visualization

Project Workflow
  1. Data Preparation (Python)
    Loaded dataset using pandas
    Performed exploratory analysis (.info(), .describe())
    Handled missing values using median imputation
    Created new features:
      Farm income share
      Off-farm income share
      Non-farm income share
      Other income share
  2. Database Integration (MySQL)
    Exported cleaned dataset to MySQL
    Created a view (my_table_view) for standardized column naming
    Structured data for efficient querying
  3. Data Analysis (SQL)
    Performed SQL queries to answer key questions:
      Regional comparison of income and wages
      Gender wage gap analysis
      Relationship between farm income and wages
      Income sufficiency vs rural income benchmark
      Disparity analysis using wage-to-income ratios
  4. Dashboard Development (Power BI)
    Built an interactive dashboard including:
      Regional comparison of farm income and wages
      Wage disparity (ratio analysis)
      Different Income share from the Total Household Income 
      Top and bottom performing regions

Dashboard
The Power BI dashboard provides:
  Key performance indicators (income, wages, rural benchmark)
  Regional comparisons (bar charts)
  Disparity analysis (wage-to-income ratio)
  Income composition 
  
Key Results & Insights
  Mismatch between productivity and wages:
   High farm income regions do not always provide higher wages to workers
  Income inequality exists across regions:
   Some regions show strong agricultural output but lower worker compensation
  Dependence on non-farm income:
   Many households rely on additional income sources beyond farming
  Farm income insufficiency:
   In most regions, farming alone is not enough to meet rural income standards

How to Run the Project
  1. Python (Data Cleaning)
      Open Jupyter Notebook
      Run data cleaning and preprocessing scripts
  2. MySQL
      Import cleaned dataset
      Run SQL scripts to create:
        my_table_view
        analytical views (e.g., disparity, ranking)
  3. Power BI
      Connect to MySQL database
      Import views
      Build or open the dashboard file (.pbix) 


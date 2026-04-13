USE project1;
-- Create a view to rename column
        CREATE VIEW my_table_view AS
        SELECT
			regDesc AS region,
            avg_annual_total_incm_farm_households_02_03 AS total_income,
			avg_annual_farm_incm_farm_households_02_03 AS farm_income,
			avg_annual_off_farm_incm_farm_households_02_03 AS off_farm_income,
			avg_annual_non_farm_incm_farm_households_02_03 AS non_farm_income,
			avg_annual_other_sources_incm_farm_households_02_03 AS other_sources_income,
			agr_wage_farm_workers_allgender_2015 AS wage_all,
			agr_wage_farm_workers_male_2015 AS wage_male,
			agr_wage_farm_workers_female_2015 AS wage_female,
            avg_rural_income_2000 AS rural_income,
            farm_income_share AS farm_income_share,
            off_farm_income_share AS off_farm_income_share,
            non_farm_income_share AS non_farm_income_share,
            other_sources_income_share AS other_sources_income_share
		FROM
			my_table;

-- KEY QUESTIONS:
-- 1. Which regions have the highest and lowest total household income?
		SELECT
			region, total_income, farm_income, off_farm_income, non_farm_income, other_sources_income
		FROM
			my_table_view
		ORDER BY
			total_income DESC;
    
    
-- which regions do agricultural workers have the lowest in terms of wages?
		SELECT
			region, wage_all, wage_male, wage_female
		FROM
			my_table_view
		ORDER BY
			wage_all ASC
		LIMIT 10;
        
-- 2. Are there wage differences between male and female workers across regions and if so, which gender is paid more?
		SELECT 
			region, wage_male, wage_female,
			CASE
				WHEN wage_male > wage_female THEN 'Male higher'
				WHEN wage_female > wage_male THEN 'Female higher'
				ELSE 'Equal pay'
			END AS wage_gap,
            ROUND(ABS(wage_male - wage_female), 2) AS wage_gap_amountS
		FROM
			my_table_view
		ORDER BY
			wage_gap_amount DESC;

-- 3. Are regions where farming is productive also pay farm workers higher wages?
		CREATE VIEW farm_vs_wage_rank_view AS
		SELECT
			region,
			farm_income,
			wage_all,
			RANK() OVER (ORDER BY farm_income DESC) AS farm_rank,
			RANK() OVER (ORDER BY wage_all DESC) AS wage_rank
		FROM my_table_view
		ORDER BY farm_rank;


-- 4. How much of farm household income comes from farming alone, and is it sufficient to support household expenses?

	-- Household income from farming
		SELECT 
			region,total_income,
            ROUND(farm_income_share,2) AS farm_income_share
        FROM
			my_table_view;
		
	-- Is farm income alone sufficient?
		SELECT
			region,
			farm_income,
			rural_income,
			CASE
				WHEN farm_income >= rural_income THEN 'Farm income sufficient'
				ELSE 'Farm income insufficient'
			END AS farm_income_sufficiency
		FROM 
			my_table_view
		ORDER BY 
			farm_income DESC;
        
-- 5. Comparing the total household income with average rural income across regions, which regions are above & below the average rural income? 
		SELECT 
			region, 
			CASE
				WHEN total_income >= rural_income THEN 'Above'
				ELSE 'Below'
			END AS income_status
		FROM
			my_table_view;
            
-- 6. Which regions have the greatest disparity between farm income and wages?
		CREATE VIEW disparity_view AS
		SELECT 
			region,
			farm_income,
			(wage_all * 365) AS annual_wage,
			((wage_all * 365) / farm_income) AS wage_ratio
		FROM my_table_view
		ORDER BY wage_ratio ASC;
	
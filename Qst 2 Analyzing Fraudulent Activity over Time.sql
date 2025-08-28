-- Analyzing Fraudulent Activity over Time
WITH rolling_fraud AS (
    SELECT 
        nameorig,
        step,
        SUM(isFraud) OVER (
        PARTITION BY nameorig
		ORDER BY step
		ROWS BETWEEN 4 PRECEDING AND CURRENT ROW ) AS onlyfrauds
    FROM transactions
)
SELECT *
FROM rolling_fraud
Where onlyfrauds >0  
-- Aditi Meena

# Fraud Detection and Risk Analytics Using SQL




## Project Overview
This project applies SQL to detect fraud and analyze financial risks using the PaySim dataset, a simulated dataset modeled after real-world mobile money transactions. It demonstrates how advanced SQL querying—such as Recursive CTEs, window functions, and multi-step joins—can uncover hidden fraud patterns, validate transaction integrity, and detect anomalies that are critical in financial crime prevention.
## Objectives
•	Detect fraudulent money-laundering chains across multiple accounts.

•	Analyze fraudulent activity trends over time using rolling calculations.

•	Identify suspicious account behavior through combined anomaly checks.

•	Validate financial data consistency between computed and actual balances.

•	Detect transactions involving zero-balance accounts before or after activity.

## Tech Stack
•	Language: PostgreSQL

•	Data Source: PaySim dataset (simulated mobile money transactions, anonymized and scaled).

•	Techniques Used:

    o	Recursive Common Table Expressions (CTEs)

    o	Window Functions (e.g., rolling sums with ROWS BETWEEN)

    o	Multi-step Joins

    o	Data Consistency Validation Queries
    
    o	Anomaly Detection Queries

## Step-by-Step Process
•	Recursive Fraud Detection: Used Recursive CTEs to trace multi-step laundering chains where all transactions were flagged as fraudulent.

•	Rolling Fraud Analysis: Applied window functions to calculate the sum of fraudulent transactions over the last 5 time steps.

•	Complex Pattern Detection: Built multiple CTEs to capture large transfers, unchanged balances, and flagged transactions, then combined them to identify highly suspicious accounts.

•	Data Validation: Checked whether computed destination balances matched stored balances, ensuring data integrity.

•	Zero-Balance Detection: Identified transactions where destination accounts had a zero balance before or after transactions.

## Key Insights
•	Fraudulent activity often occurs in chains, indicating structured money-laundering attempts.

•	Rolling sums reveal repeat offenders and temporal spikes in fraud.

•	Combining multiple suspicious signals strengthens fraud detection accuracy.

•	Balance validation ensures data reliability before analysis.

•	Zero-balance accounts often act as intermediaries in suspicious transactions

## What I Learned
•	Hands-on application of advanced SQL techniques (recursive CTEs, window functions).

•	Importance of validating financial data integrity before drawing insights.

•	How anomaly detection in transactions can expose fraud patterns.

•	Gained practical understanding of risk analytics and compliance monitoring.

•	Realized SQL’s potential not just as a querying tool but as a powerful engine for fraud detection in finance.

## Authors

  Aditi Meena

[LinkedIn](https://www.linkedin.com/in/aditi-meena0/) || [GitHub](https://github.com/aditimeenawork)



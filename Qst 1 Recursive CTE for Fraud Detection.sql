--Recursive CTE for Fraud Detection
WITH RECURSIVE fraud_chain (initial_account, next_account, step) AS(
	--Anchor member
		SELECT
			nameorig AS initial_account,
			namedest AS next_account,
			step
		FROM transactions
		WHERE isfraud = 1 AND type = 'TRANSFER'

		UNION ALL
		--Recursive member
		SELECT
			fc.initial_account,
			t.namedest,
			t.step
		FROM fraud_chain AS fc
		INNER JOIN transactions AS t
		ON fc.next_account = t.nameorig
		WHERE isfraud= 1 AND fc.step < t.step
		AND t.type= 'TRANSFER'
)
SELECT * FROM fraud_chain
--Aditi Meena
-- Checking Transactions with Zero Balance Before or After at destination account

SELECT nameorig, oldbalancedest, newbalancedest FROM transactions
	WHERE oldbalancedest=0 
	OR newbalancedest=0;
-- Aditi Meena


-- Complex Fraud detection using multiple CTE
-- lt = large transactions, nbc= no balance change,ft= fraud transactions
WITH lt AS (
	SELECT 
	nameorig, 
	step, 
	amount 
	FROM transactions 
	WHERE type = 'TRANSFER' 
	AND amount >(SELECT AVG(amount) FROM transactions WHERE isfraud=0)), 
nbc AS (
	SELECT 
	nameorig, 
	step, 
	oldbalanceorig, 
	newbalanceorig 
	FROM transactions 
	WHERE oldbalanceorig=newbalanceorig),
ft AS (
	SELECT 
	nameorig, 
	step 
	FROM transactions 
	WHERE isflaggedfraud = 1) 
SELECT lt.nameorig, nbc.oldbalanceorig, nbc.newbalanceorig FROM lt
JOIN nbc ON lt.nameorig = nbc.nameorig AND lt.step = nbc.step
JOIN ft ON lt.nameorig = ft.nameorig AND lt.step = ft.step
-- Aditi Meena
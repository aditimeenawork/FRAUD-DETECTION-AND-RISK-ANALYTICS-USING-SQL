-- Checking if computational values of new balance at destination = provided newbalancedest

SELECT *, (oldbalancedest + amount) AS new_updated_balance FROM transactions
WHERE (oldbalancedest + amount) = newbalancedest
-- Aditi Meena
CREATE VIEW merchant_under_2 AS
SELECT merchant_name, COUNT(transaction_amount)
	FROM transactions_by_cardholders
	WHERE transaction_amount<2.00
GROUP BY merchant_name
ORDER BY COUNT(transaction_amount) DESC
LIMIT 5;
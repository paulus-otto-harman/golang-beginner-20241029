SELECT *
FROM (
	SELECT to_char(created_at,'Mon') bulan, 
	customers.name, 
	count(*) jumlah, ROW_NUMBER() OVER (PARTITION BY to_char(created_at,'Mon') ORDER BY count(*) DESC)
	FROM orders
	JOIN customers ON orders.customer_id=customers.id
	GROUP BY bulan, customers.name
	ORDER BY bulan, jumlah DESC
) monthly_customer
WHERE row_number=1

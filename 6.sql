SELECT  to_char(orders.created_at,'Mon') bulan, drivers.name, count(*)
FROM orders
JOIN drivers ON orders.driver_id=drivers.id
GROUP BY bulan,drivers.name
ORDER BY bulan,3 DESC

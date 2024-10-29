SELECT date_part('hour', created_at) jam, count(*)
FROM orders
GROUP BY jam
ORDER BY 2 DESC

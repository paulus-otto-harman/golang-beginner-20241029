SELECT areas.name, count(*)
FROM orders
JOIN areas ON orders.area_id=areas.id
GROUP BY areas.name
ORDER BY 2 DESC

SELECT to_char(created_at,'Mon') AS bulan, count(*) AS total_per_bulan
     FROM orders
 GROUP BY bulan;
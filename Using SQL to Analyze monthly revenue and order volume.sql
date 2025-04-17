SELECT 
  EXTRACT(YEAR FROM Date) AS year,
  EXTRACT(MONTH FROM Date) AS month,
  SUM(`Total Revenue`) AS total_revenue,
  COUNT(DISTINCT `Transaction ID`) AS order_volume
FROM onlinedata
WHERE Date BETWEEN '2024-01-01' AND '2024-06-30'
GROUP BY year, month
ORDER BY year, month;

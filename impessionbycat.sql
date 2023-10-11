SELECT
	product_category,
	ROUND(SUM(CASE 
			  WHEN is_click = true 
			  THEN 1 ELSE 0 END) * 100.00/COUNT(session_id), 2) AS CTR
FROM marketing_impression
GROUP BY product_category
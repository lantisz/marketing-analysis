SELECT 
	product_category, 
	age_level, 
	COUNT(session_id) AS total_impressions,
    ROUND((SUM(CASE WHEN is_click = true THEN 1 ELSE 0 END)* 1.0 / COUNT(session_id)) * 100, 2) AS CTR
FROM marketing_impression
GROUP BY product_category, 
		 age_level
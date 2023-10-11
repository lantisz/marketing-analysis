SELECT 
	campaign_name,
	COUNT(session_id),
	SUM(CASE 
		WHEN is_click = true THEN 1
		ELSE 0
	END) AS clicks
FROM marketing_impression
GROUP BY campaign_name;

SELECT
	product_category,
	COUNT(session_id),
	SUM(CASE 
		WHEN is_click = true THEN 1
		ELSE 0
	END) AS clicks
FROM marketing_impression
GROUP BY product_category
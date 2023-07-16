SELECT
	campaign_name,
	region,
	COUNT(DISTINCT user_id) AS unique_users
FROM marketing_impression
WHERE campaign_name = '12 Days of Christmas Deals'
GROUP BY 
	region,
	campaign_name
ORDER BY unique_users DESC
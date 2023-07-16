SELECT
	campaign_name,
	COUNT(session_id)
FROM marketing_impression
GROUP BY campaign_name
ORDER BY COUNT(session_id) DESC
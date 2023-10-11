SELECT marketing_impression.session_id,
	marketing_impression.user_id,
	webpage_id,
	marketing_impression.product_category,
	gender,
	marketing_impression.region,
	marketing_impression.is_click,
	sales.is_campaign,
	sales.total_php,
	COUNT(marketing_impression.user_id) AS Impression
FROM marketing_impression
INNER JOIN sales ON  sales.user_id = marketing_impression.user_id 
WHERE is_campaign IN ('true')
AND (total_php IS NOT null)
GROUP BY 
	marketing_impression.session_id,
	marketing_impression.user_id,
	webpage_id,
	marketing_impression.product_category,
	gender,
	age_level,
	marketing_impression.region,
	marketing_impression.is_click,
	sales.is_campaign,
	sales.total_php
HAVING COUNT(marketing_impression.user_id) > 0
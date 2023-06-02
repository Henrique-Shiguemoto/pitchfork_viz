/*

Creted by: Henrique Shiguemoto Felizardo
Date: 6/1/2023
Description: Best rated artists per genre

*/

SELECT 
	genre AS Genre, 
	artist AS Artist, 
	ROUND(AVG(score), 2) AS Rating
FROM 
	reviews INNER JOIN genres ON 
			reviews.reviewid = genres.reviewid
WHERE 
	Genre IS NOT NULL
GROUP BY 
	Genre, Artist
ORDER BY 
	Genre, 
	Rating DESC;
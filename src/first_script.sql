/*

Created by: Henrique Shiguemoto Felizardo
Date: 6/1/2023
Description: Distribution of average ratings per genre.

*/

SELECT 
	ROUND(AVG(reviews.score), 2) AS [Average Rating],
	genres.genre AS [Genre]
FROM
	reviews INNER JOIN genres ON (reviews.reviewid = genres.reviewid)
WHERE 
	Genre IS NOT NULL
GROUP BY
	Genre
ORDER BY
	[Average Rating] DESC
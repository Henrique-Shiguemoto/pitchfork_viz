/*

Created by: Henrique Shiguemoto Felizardo
Date: 6/1/2023
Description: Above average artists for each genre.

*/

SELECT
	artist AS Artist, 
	ROUND(AVG(score), 2) AS Average_Rating,
	genre AS Genre, 
	[Average Rating] AS Average_Genre_Rating
FROM 
	reviews
INNER JOIN 
	(SELECT 
		reviewid, 
		genres.genre, 
		[Average Rating] 
	FROM 
		genres 
	INNER JOIN 
		v_AVG_RATING_PER_GENRE 
	ON 
		genres.genre = v_AVG_RATING_PER_GENRE.Genre) 
	AS AUX
ON
	reviews.reviewid = AUX.reviewid
WHERE 
	score > [Average Rating]
GROUP BY
	artist
ORDER BY
	genre,
	[Average_Rating] DESC
/*

Created by: Henrique Shiguemoto Felizardo
Date: 6/1/2023
Description: Average ratings per genre per year.

*/

SELECT 
	pub_year,
	genre,
	ROUND(AVG(score), 2) AS Average_Rating
FROM 
	reviews INNER JOIN genres ON reviews.reviewid = genres.reviewid
WHERE
	genre IS NOT NULL
GROUP BY
	pub_year,
	genre
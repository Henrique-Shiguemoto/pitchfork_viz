/*

Creted by: Henrique Shiguemoto Felizardo
Date: 6/1/2023
Description: Best rated artists per year

*/

SELECT 
	pub_year AS [Year], 
	artist AS [Artist], 
	ROUND(AVG(score), 2) as [Average Rating]
FROM 
	reviews
GROUP BY 
	Year, Artist
ORDER BY 
	pub_year, 
	score DESC;
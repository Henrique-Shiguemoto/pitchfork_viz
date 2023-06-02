/*

Creted by: Henrique Shiguemoto Felizardo
Date: 6/1/2023
Description: Distribution of ratings per artist

*/

SELECT 
	artist, 
	title, 
	score
FROM 
	reviews
ORDER BY 
	artist, 
	score;
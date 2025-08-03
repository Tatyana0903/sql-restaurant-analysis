1. Select all data from the table
SELECT *
FROM nomnom;

2. Get a list of all unique neighborhoods
SELECT DISTINCT neighborhood
FROM nomnom;

3. Get a list of all unique cuisines
SELECT DISTINCT cuisine
FROM nomnom;

4. Restaurants with Chinese cuisine
SELECT *
FROM nomnom
WHERE cuisine = 'Chinese';

5. Restaurants with a review score of 4 or higher
SELECT *
FROM nomnom
WHERE review >= 4;

6. Italian restaurants with high price category ($$$)
SELECT *
FROM nomnom
WHERE cuisine = 'Italian'
AND price = '$$$';

7. Restaurants whose name contains the word "meatball"
SELECT *
FROM nomnom
WHERE name LIKE '%meatball%';

8. Restaurants located in Midtown, Downtown, or Chinatown
SELECT *
FROM nomnom
WHERE neighborhood = 'Midtown'
   OR neighborhood = 'Downtown'
   OR neighborhood = 'Chinatown';

9. Restaurants without health inspection data
SELECT *
FROM nomnom
WHERE health IS NULL;

10. Top 10 restaurants with the highest review score
SELECT *
FROM nomnom
ORDER BY review DESC
LIMIT 10;

11. Classify restaurants based on their review score
SELECT name,
CASE
    WHEN review > 4.5 THEN 'Extraordinary'
    WHEN review > 4 THEN 'Excellent'
    WHEN review > 3 THEN 'Good'
    WHEN review > 2 THEN 'Fair'
    ELSE 'Poor'
END AS "Review"
FROM nomnom;




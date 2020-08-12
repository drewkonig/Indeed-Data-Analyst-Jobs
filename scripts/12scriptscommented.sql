/* 1. Rows in table

SELECT count(*) from data_analyst_jobs;
*/

/* 2. First 10 rows

SELECT * from data_analyst_jobs
LIMIT 10;
*/

/* 3. Postings in Tennessee or Kentucky

SELECT count(*) from data_analyst_jobs
WHERE location = 'TN'
OR location = 'KY';
*/

/* 4. Tennessee postings with star rating above 4

SELECT count(*) from data_analyst_jobs
WHERE location = 'TN'
AND star_rating > 4;
*/

/* 5. Review count between 500 and 1000

SELECT * from data_analyst_jobs
WHERE review_count > 500 
AND review_count < 1000;
*/

/* 6. Average star rating for each state, highest state

SELECT location AS state, round(AVG(star_rating),2) AS avg_rating
FROM data_analyst_jobs
WHERE location IS NOT NULL
AND star_rating IS NOT NULL
GROUP BY state
ORDER BY avg_rating DESC;
*/

/* 7. Unique job titles

SELECT count (DISTINCT title)
FROM data_analyst_jobs;
*/

/* 8. Unique job titles in California

SELECT count (DISTINCT title)
FROM data_analyst_jobs
WHERE location = 'CA';
*/

/* 9. Average star ratings for companies with over 5000 reviews, 
number of companies with over 5000 reviews

SELECT company, round(AVG(star_rating),2)
FROM data_analyst_jobs
WHERE review_count > 5000
AND company IS NOT null
GROUP BY company;
*/

/* 10. 5000 review companies, highest to lowest average star rating

SELECT company, round(AVG(star_rating),2) as avg_star
FROM data_analyst_jobs
WHERE review_count > 5000
AND company IS NOT null
GROUP BY company
ORDER BY avg_star DESC;
*/

/* 11. Job titles with word 'Analyst'

SELECT COUNT(DISTINCT title)
FROM data_analyst_jobs
WHERE lower(title) LIKE '%analyst%';
*/

/* 12. Job titles without word 'Analyst' or word 'Analytics'

SELECT title
FROM data_analyst_jobs
WHERE lower(title) NOT LIKE '%analyst%'
AND lower(title) NOT LIKE '%analytics%';
*/
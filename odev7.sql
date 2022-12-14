-- for explanation see README.md
-- açıklamalar için README.md dosyasına göz atabilirsiniz

SELECT rating FROM film
GROUP BY rating;
--
SELECT replacement_cost, COUNT(*)
FROM film
GROUP BY replacement_cost
HAVING COUNT(film) > 50;
--
SELECT store_id, COUNT(*) FROM customer
GROUP BY store_id;
--
SELECT country_id, COUNT(*) FROM city
GROUP BY country_id
ORDER BY COUNT(city) DESC
LIMIT 1

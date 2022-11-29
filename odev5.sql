-- for explanation see README.md
-- açıklamalar için README.md dosyasına göz atabilirsiniz

SELECT title FROM film
WHERE title LIKE '%n'
ORDER BY length DESC
LIMIT 5;
--
SELECT title FROM film
WHERE title LIKE '%n'
ORDER BY length ASC
LIMIT 5
OFFSET 5;
--
SELECT last_name, store_id FROM customer
WHERE store_id = 1
ORDER BY last_name
LIMIT 4;

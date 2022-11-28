SELECT DISTINCT replacement_cost FROM film;
SELECT COUNT (DISTINCT replacement_cost) FROM film;
SELECT COUNT(title) FROM film where title LIKE 'T%' AND rating = 'G';
SELECT COUNT(country) FROM country where country LIKE '_____';
SELECT COUNT(city) FROM city where city ILIKE '%R';

# patika_sql_homework 
***
* [patika.dev](https://app.patika.dev/evrenekici)
***

## Ödev 1
Merhabalar,

Aşağıdaki sorgu senaryolarını dvdrental örnek veri tabanı üzerinden gerçekleştiriniz.

* film tablosunda bulunan title ve description sütunlarındaki verileri sıralayınız.
* film tablosunda bulunan tüm sütunlardaki verileri film uzunluğu (length) 60 dan büyük VE 75 ten küçük olma koşullarıyla sıralayınız.
* film tablosunda bulunan tüm sütunlardaki verileri rental_rate 0.99 VE replacement_cost 12.99 VEYA 28.99 olma koşullarıyla sıralayınız.
* customer tablosunda bulunan first_name sütunundaki değeri 'Mary' olan müşterinin last_name sütunundaki değeri nedir?
* film tablosundaki uzunluğu(length) 50 ten büyük OLMAYIP aynı zamanda rental_rate değeri 2.99 veya 4.99 OLMAYAN verileri sıralayınız.
Kolay Gelsin.

***

```sql
SELECT title, description FROM film;
SELECT * FROM film WHERE length >60 AND length < 75;
SELECT * FROM film WHERE rental_rate=0.99 AND (replacement_cost = 12.99 or replacement_cost = 28.99);
SELECT last_name FROM customer WHERE first_name = 'Mary';
SELECT * FROM film WHERE NOT length > 50 AND NOT(rental_rate = 2.99 OR rental_rate = 4.99);
```

## Ödev 2

Merhabalar,

Aşağıdaki sorgu senaryolarını dvdrental örnek veri tabanı üzerinden gerçekleştiriniz.

* film tablosunda bulunan tüm sütunlardaki verileri replacement cost değeri 12.99 dan büyük eşit ve 16.99 küçük olma koşuluyla sıralayınız ( BETWEEN - AND yapısını kullanınız.)
* actor tablosunda bulunan first_name ve last_name sütunlardaki verileri first_name 'Penelope' veya 'Nick' veya 'Ed' değerleri olması koşuluyla sıralayınız. ( IN operatörünü kullanınız.)
* film tablosunda bulunan tüm sütunlardaki verileri rental_rate 0.99, 2.99, 4.99 VE replacement_cost 12.99, 15.99, 28.99 olma koşullarıyla sıralayınız. ( IN operatörünü kullanınız.)
Kolay Gelsin.

***

```sql
SELECT * FROM film WHERE replacement_cost BETWEEN 12.99 AND 16.99;
SELECT first_name, last_name FROM actor WHERE first_name IN ('Penelope','Nick','Ed');
SELECT * FROM film WHERE rental_rate IN (0.99, 2.99, 4.99) AND replacement_cost IN (12.99, 15.99, 28.99);
```

## Ödev 3

Merhabalar,

Aşağıdaki sorgu senaryolarını dvdrental örnek veri tabanı üzerinden gerçekleştiriniz.

* country tablosunda bulunan country sütunundaki ülke isimlerinden 'A' karakteri ile başlayıp 'a' karakteri ile sonlananları sıralayınız.
* country tablosunda bulunan country sütunundaki ülke isimlerinden en az 6 karakterden oluşan ve sonu 'n' karakteri ile sonlananları sıralayınız.
* film tablosunda bulunan title sütunundaki film isimlerinden en az 4 adet büyük ya da küçük harf farketmesizin 'T' karakteri içeren film isimlerini sıralayınız.
* film tablosunda bulunan tüm sütunlardaki verilerden title 'C' karakteri ile başlayan ve uzunluğu (length) 90 dan büyük olan ve rental_rate 2.99 olan verileri sıralayınız.
Kolay Gelsin.


***
```sql
SELECT country FROM country WHERE country LIKE 'A%a';
SELECT country FROM country WHERE country LIKE '______%n';
SELECT title FROM film WHERE title ILIKE '%t%t%t%t%';
SELECT * FROM film WHERE title ILIKE 'C%' AND rental_rate=2.99 AND length>90 ;
```

## Ödev 4

Merhabalar,

Aşağıdaki sorgu senaryolarını dvdrental örnek veri tabanı üzerinden gerçekleştiriniz.

* film tablosunda bulunan replacement_cost sütununda bulunan birbirinden farklı değerleri sıralayınız.
* film tablosunda bulunan replacement_cost sütununda birbirinden farklı kaç tane veri vardır?
* film tablosunda bulunan film isimlerinde (title) kaç tanesini T karakteri ile başlar ve aynı zamanda rating 'G' ye eşittir?
* country tablosunda bulunan ülke isimlerinden (country) kaç tanesi 5 karakterden oluşmaktadır?
* city tablosundaki şehir isimlerinin kaç tanesi 'R' veya r karakteri ile biter?
Kolay Gelsin.

***
```sql
SELECT DISTINCT replacement_cost FROM film;
SELECT COUNT (DISTINCT replacement_cost) FROM film;
SELECT COUNT(title) FROM film where title LIKE 'T%' AND rating = 'G';
SELECT COUNT(country) FROM country where country LIKE '_____';
SELECT COUNT(city) FROM city where city ILIKE '%R';
```
# Ödev 5

Merhabalar,

Aşağıdaki sorgu senaryolarını dvdrental örnek veri tabanı üzerinden gerçekleştiriniz.

* film tablosunda bulunan ve film ismi (title) 'n' karakteri ile biten en uzun (length) 5 filmi sıralayınız.
* film tablosunda bulunan ve film ismi (title) 'n' karakteri ile biten en kısa (length) ikinci(6,7,8,9,10) 5 filmi(6,7,8,9,10) sıralayınız.
* customer tablosunda bulunan last_name sütununa göre azalan yapılan sıralamada store_id 1 olmak koşuluyla ilk 4 veriyi sıralayınız.
Kolay Gelsin.

***

```sql
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
```
# Ödev 6

Merhabalar,

Aşağıdaki sorgu senaryolarını dvdrental örnek veri tabanı üzerinden gerçekleştiriniz.

* film tablosunda bulunan rental_rate sütunundaki değerlerin ortalaması nedir?
* film tablosunda bulunan filmlerden kaç tanesi 'C' karakteri ile başlar?
* film tablosunda bulunan filmlerden rental_rate değeri 0.99 a eşit olan en uzun (length) film kaç dakikadır?
* film tablosunda bulunan filmlerin uzunluğu 150 dakikadan büyük olanlarına ait kaç farklı replacement_cost değeri vardır?

***

```sql
SELECT AVG(rental_rate) FROM film;
--
SELECT COUNT(title) FROM film
WHERE title LIKE 'C%';
--
SELECT MAX(length) FROM film
WHERE rental_rate = 0.99;
--
SELECT COUNT(DISTINCT replacement_cost) FROM film
WHERE length > 150;
```

# Ödev 7
Merhabalar,

Aşağıdaki sorgu senaryolarını dvdrental örnek veri tabanı üzerinden gerçekleştiriniz.

* film tablosunda bulunan filmleri rating değerlerine göre gruplayınız.
* film tablosunda bulunan filmleri replacement_cost sütununa göre grupladığımızda film sayısı 50 den fazla olan replacement_cost değerini ve karşılık gelen film sayısını sıralayınız.
* 3. customer tablosunda bulunan store_id değerlerine karşılık gelen müşteri sayılarını nelerdir? 
* 4. city tablosunda bulunan şehir verilerini country_id sütununa göre gruplandırdıktan sonra en fazla şehir sayısı barındıran country_id bilgisini ve şehir sayısını paylaşınız.

Kolay Gelsin.

***

```sql
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
```

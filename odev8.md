# ÖDEV 8

[patika/evrenekici](https://app.patika.dev/evrenekici)

Merhabalar,
- test veritabanınızda employee isimli sütun bilgileri id(INTEGER), name VARCHAR(50), birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım.
- Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim.
- Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.
- Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım.
Kolay Gelsin.
---
- Creating table
```sql
CREATE TABLE employee(
    id INTEGER PRIMARY KEY,
    name VARCHAR(50),
    birtday DATE,
	  email VARCHAR(100)
    );
```
***
- Inserting 50 values
```sql
insert into employee (id, name, birtday, email) values (1, 'Edythe', '2022/04/17', 'ehoulston0@hugedomains.com');
insert into employee (id, name, birtday, email) values (2, 'Doralynn', '2022/06/28', 'dminard1@virginia.edu');
insert into employee (id, name, birtday, email) values (3, 'Bone', '2022/04/01', 'bdemaine2@flickr.com');
insert into employee (id, name, birtday, email) values (4, 'Gawain', '2022/09/10', 'gfarress3@xing.com');
insert into employee (id, name, birtday, email) values (5, 'Quintana', '2022/04/28', null);
insert into employee (id, name, birtday, email) values (6, 'Nevsa', '2022/06/02', 'nbredgeland5@huffingtonpost.com');
insert into employee (id, name, birtday, email) values (7, 'Davina', '2022/01/23', 'dwilliam6@theatlantic.com');
insert into employee (id, name, birtday, email) values (8, 'Ash', null, 'alankham7@reddit.com');
insert into employee (id, name, birtday, email) values (9, 'Hilarius', '2022/09/24', 'hpinson8@zdnet.com');
insert into employee (id, name, birtday, email) values (10, 'Corbett', '2022/09/04', 'crowena9@edublogs.org');
insert into employee (id, name, birtday, email) values (11, 'Lea', '2022/06/29', null);
insert into employee (id, name, birtday, email) values (12, 'Tabor', '2022/06/08', 'tbrandob@tripod.com');
insert into employee (id, name, birtday, email) values (13, 'Brianne', '2022/03/17', 'bmcclancyc@quantcast.com');
insert into employee (id, name, birtday, email) values (14, 'Sashenka', '2022/06/18', 'sknaggsd@macromedia.com');
insert into employee (id, name, birtday, email) values (15, 'Tabatha', null, null);
insert into employee (id, name, birtday, email) values (16, 'Ahmad', '2022/09/01', 'amorlingf@accuweather.com');
insert into employee (id, name, birtday, email) values (17, 'Hamish', '2022/10/18', 'hmackrog@latimes.com');
insert into employee (id, name, birtday, email) values (18, 'Jeanine', null, 'jyewenh@ebay.com');
insert into employee (id, name, birtday, email) values (19, 'Angie', '2022/01/19', 'adelahayi@bravesites.com');
insert into employee (id, name, birtday, email) values (20, 'Ange', '2022/07/01', 'ajozefj@gov.uk');
insert into employee (id, name, birtday, email) values (21, 'Nahum', '2022/10/24', 'nralfek@toplist.cz');
insert into employee (id, name, birtday, email) values (22, 'Devon', null, null);
insert into employee (id, name, birtday, email) values (23, 'Vi', '2022/01/03', 'vbonnetm@walmart.com');
insert into employee (id, name, birtday, email) values (24, 'Royall', '2022/05/25', 'rmatusiakn@google.fr');
insert into employee (id, name, birtday, email) values (25, 'Anselma', null, 'awardso@umich.edu');
insert into employee (id, name, birtday, email) values (26, 'Farra', '2022/08/04', 'fcountp@imageshack.us');
insert into employee (id, name, birtday, email) values (27, 'Reynard', '2022/07/01', null);
insert into employee (id, name, birtday, email) values (28, 'Krishna', '2022/02/15', 'kmayfieldr@about.me');
insert into employee (id, name, birtday, email) values (29, 'Edwina', '2022/05/09', 'edunstans@nhs.uk');
insert into employee (id, name, birtday, email) values (30, 'Tally', '2022/09/21', 'tdyost@deliciousdays.com');
insert into employee (id, name, birtday, email) values (31, 'Aldo', '2022/10/20', 'abrimmanu@usda.gov');
insert into employee (id, name, birtday, email) values (32, 'Maurise', '2022/06/30', 'matheyv@marriott.com');
insert into employee (id, name, birtday, email) values (33, 'Cleo', '2022/04/19', 'cdepkaw@digg.com');
insert into employee (id, name, birtday, email) values (34, 'Desi', '2022/01/04', null);
insert into employee (id, name, birtday, email) values (35, 'Adolf', null, 'agodingy@guardian.co.uk');
insert into employee (id, name, birtday, email) values (36, 'Eldon', '2022/05/29', 'eputtickz@senate.gov');
insert into employee (id, name, birtday, email) values (37, 'Si', '2022/03/16', 'smiskelly10@house.gov');
insert into employee (id, name, birtday, email) values (38, 'Northrup', '2022/03/01', 'nmarre11@nsw.gov.au');
insert into employee (id, name, birtday, email) values (39, 'Cristie', '2022/07/16', null);
insert into employee (id, name, birtday, email) values (40, 'Dasha', '2022/02/28', 'dchaman13@arstechnica.com');
insert into employee (id, name, birtday, email) values (41, 'Gare', '2022/01/23', 'gsidwell14@shinystat.com');
insert into employee (id, name, birtday, email) values (42, 'Garv', '2022/03/24', null);
insert into employee (id, name, birtday, email) values (43, 'Dwayne', '2022/03/09', 'dbinner16@economist.com');
insert into employee (id, name, birtday, email) values (44, 'Devan', '2022/10/23', 'dwikey17@furl.net');
insert into employee (id, name, birtday, email) values (45, 'Jeremy', '2022/01/01', 'jbehrens18@marriott.com');
insert into employee (id, name, birtday, email) values (46, 'Gerrilee', '2022/05/18', 'geddow19@uol.com.br');
insert into employee (id, name, birtday, email) values (47, 'Hal', '2021/12/13', 'hbothram1a@usatoday.com');
insert into employee (id, name, birtday, email) values (48, 'Pietro', '2022/03/29', 'pyter1b@studiopress.com');
insert into employee (id, name, birtday, email) values (49, 'Quill', '2022/08/16', 'qbrann1c@zimbio.com');
insert into employee (id, name, birtday, email) values (50, 'Hobart', '2022/09/17', 'hpaten1d@arstechnica.com');
```
***
- UPDATES
```sql
-- update 1
UPDATE employee
SET name = 'evren', birtday = '2000-01-01'
WHERE id = 1;
-- update 2
UPDATE employee
SET name = 'damla', birtday = '1990-03-01'
WHERE id = 15;
-- update 3
UPDATE employee
SET name = 'evren', birtday = '2000-01-01'
WHERE id = 2;
-- update 4
UPDATE employee
SET name = 'evren', birtday = '1980-03-01'
WHERE id = 22;
-- update 5
UPDATE employee
SET name = 'defne', birtday = '1977-01-01'
WHERE id = 33;
```
***
- DELETİNG
```sql
-- delete 1
DELETE FROM employee
WHERE id = 3;

-- delete 2
DELETE FROM employee
WHERE name = 'Nevsa';

-- delete 3
DELETE FROM employee
WHERE id = 7;

-- delete 4
DELETE FROM employee
WHERE email = 'sraspel1v@go.com';

-- delete 5
DELETE FROM employee
WHERE birtday = '2000-01-02';
```

--CREATE TABLE films(
--	id int PRIMARY KEY,
--	name varchar(100) NOT NULL,
--	date Date NOT NULL,
--);

--CREATE TABLE actors(
--	id int PRIMARY KEY,
--	full_name VARCHAR(250) NOT NULL,
--	age int NOT NULL,
--	film_exp varchar(250) NULL
--);

--CREATE TABLE filmactors(
--	id int PRIMARY KEY,
--	film_id int NOT NULL FOREIGN KEY(film_id) REFERENCES films(id),
--	actor_id int NOT NULL FOREIGN KEY(actor_id) REFERENCES actors(id),
--)


--CREATE TABLE reviewers(
--	id int PRIMARY KEY,
--	info varchar(1000) NOT NULL,
--	film_id int NOT NULL FOREIGN KEY(film_id) REFERENCES films(id),
--)

--CREATE TABLE raitings(
--	id int PRIMARY KEY,
--	raiting int NOT NULL,
--	film_id int NOT NULL FOREIGN KEY(film_id) REFERENCES films(id),
--)

--CREATE TABLE news(
--	id int PRIMARY KEY,
--	news varchar(1000) NOT NULL,
--	film_id int NOT NULL FOREIGN KEY(film_id) REFERENCES films(id),
--)

--CREATE TABLE countries(
--	id int PRIMARY KEY,
--	name varchar(100) NOT NULL,
--)

--CREATE TABLE cash_collection(
--	id int PRIMARY KEY,
--	price int NOT NULL,
--	film_id int NOT NULL FOREIGN KEY(film_id) REFERENCES films(id),
--	country_id int NOT NULL FOREIGN KEY (country_id) REFERENCES countries(id),
--)

--INSERT INTO films(id, name, date) VALUES (1, 'Pirates of Caribian', '2003-12-05');
--INSERT INTO films(id, name, date) VALUES (2, 'Rokky', '2004-11-12');
--INSERT INTO films(id, name, date) VALUES (3, 'Joker', '2019-04-25');
--INSERT INTO films(id, name, date) VALUES (4, 'Pirates of Caribian', '2003-12-05');
--INSERT INTO films(id, name, date) VALUES (5, 'Pirates of Caribian2', '2006-11-01');
--INSERT INTO films(id, name, date) VALUES (6, 'Rokky1', '2006-11-23');
--INSERT INTO films(id, name, date) VALUES (7, 'Joker2', '2019-04-25');
--INSERT INTO films(id, name, date) VALUES (8, 'Pirates of Caribian4', '2007-02-05');
--INSERT INTO films(id, name, date) VALUES (9, 'Joker6', '2019-04-25');
--INSERT INTO films(id, name, date) VALUES (10, 'Pirates of Caribian8', '2011-12-05');



--INSERT INTO actors(id, full_name, age,  film_exp) VALUES(1, 'Jonny Depp', 50,  '30 years' );
--INSERT INTO actors(id, full_name, age,  film_exp) VALUES(2, 'Ornaldo Bloom', 35,  '7 years');
--INSERT INTO actors(id, full_name, age,  film_exp) VALUES(3, 'Joakin Phoenix', 56,  null );
--INSERT INTO actors(id, full_name, age,  film_exp) VALUES(4, 'Rianna', 39,  '8 years');
--INSERT INTO actors(id, full_name, age,  film_exp) VALUES(7, 'Jonny ', 21, '2 years');
--INSERT INTO actors(id, full_name, age,  film_exp) VALUES(6, 'Kevin', 59,  null);
--INSERT INTO actors(id, full_name, age, film_exp) VALUES(5, 'Jonny Depp1', 50,  null);
--INSERT INTO actors(id, full_name, age,  film_exp) VALUES(8, 'Ornaldo Bloom2', 35,  '30 years');
--INSERT INTO actors(id, full_name, age,  film_exp) VALUES(9, 'Joakin Phoenix4', 56,  '31 years');
--INSERT INTO actors(id, full_name, age,  film_exp) VALUES(10, 'Rianna3', 39,  '21 years');
--INSERT INTO actors(id, full_name, age,  film_exp) VALUES(11, 'Jonny 6', 21,  '6 years');
--INSERT INTO actors(id, full_name, age,  film_exp) VALUES(12, 'Kevin7', 59,  '26 years');

--INSERT INTO filmactors(id, film_id, actor_id) VALUES(1, 3, 2)
--INSERT INTO filmactors(id, film_id, actor_id) VALUES(2, 3, 8)
--INSERT INTO filmactors(id, film_id, actor_id) VALUES(3, 1, 3)
--INSERT INTO filmactors(id, film_id, actor_id) VALUES(4, 8, 2)
--INSERT INTO filmactors(id, film_id, actor_id) VALUES(5, 5, 5)
--INSERT INTO filmactors(id, film_id, actor_id) VALUES(6, 1, 2)
--INSERT INTO filmactors(id, film_id, actor_id) VALUES(7, 4, 9)
--INSERT INTO filmactors(id, film_id, actor_id) VALUES(8, 7, 12)
--INSERT INTO filmactors(id, film_id, actor_id) VALUES(9, 6, 11)
--INSERT INTO filmactors(id, film_id, actor_id) VALUES(10, 9, 2)
--INSERT INTO filmactors(id, film_id, actor_id) VALUES(11, 9, 5)
--INSERT INTO filmactors(id, film_id, actor_id) VALUES(12, 3, 11)


INSERT INTO reviewers(id, info, film_id) VALUES(1, 'Cool film', 2)
INSERT INTO reviewers(id, info, film_id) VALUES(2, 'Great film', 5)
INSERT INTO reviewers(id, info, film_id) VALUES(3, 'I like this film', 1)
INSERT INTO reviewers(id, info, film_id) VALUES(4, 'Cool ', 7)
INSERT INTO reviewers(id, info, film_id) VALUES(5, 'I dont like this film', 4)
INSERT INTO reviewers(id, info, film_id) VALUES(6, 'Good film', 8)
INSERT INTO reviewers(id, info, film_id) VALUES(7, 'I love this film', 3)
INSERT INTO reviewers(id, info, film_id) VALUES(8, 'Not bad film', 2)
INSERT INTO reviewers(id, info, film_id) VALUES(9, 'Bad film', 10)
INSERT INTO reviewers(id, info, film_id) VALUES(10, 'Cool film', 9)



INSERT INTO raitings(id, raiting, film_id) VALUES(1, 50, 2)
INSERT INTO raitings(id, raiting, film_id) VALUES(2, 41, 1)
INSERT INTO raitings(id, raiting, film_id) VALUES(3, 22, 2)
INSERT INTO raitings(id, raiting, film_id) VALUES(4, 77, 8)
INSERT INTO raitings(id, raiting, film_id) VALUES(5, 60, 4)
INSERT INTO raitings(id, raiting, film_id) VALUES(6, 100, 9)
INSERT INTO raitings(id, raiting, film_id) VALUES(7, 90, 10)
INSERT INTO raitings(id, raiting, film_id) VALUES(8, 56, 7)
INSERT INTO raitings(id, raiting, film_id) VALUES(9, 54, 2)
INSERT INTO raitings(id, raiting, film_id) VALUES(10, 53, 3)
INSERT INTO raitings(id, raiting, film_id) VALUES(11, 71, 1)
INSERT INTO raitings(id, raiting, film_id) VALUES(12, 96, 7)


INSERT INTO news(id, news, film_id) VALUES(1, 'smth interesting', 2)
INSERT INTO news(id, news, film_id) VALUES(2, 'smth interesting1', 6)
INSERT INTO news(id, news, film_id) VALUES(3, 'smth interesting2', 1)
INSERT INTO news(id, news, film_id) VALUES(4, 'smth interesting3', 7)
INSERT INTO news(id, news, film_id) VALUES(5, 'smth interesting4', 3)
INSERT INTO news(id, news, film_id) VALUES(6, 'smth interesting5', 10)
INSERT INTO news(id, news, film_id) VALUES(7, 'smth interesting6', 9)
INSERT INTO news(id, news, film_id) VALUES(8, 'smth interesting7', 5)
INSERT INTO news(id, news, film_id) VALUES(9, 'smth interesting8', 4)
INSERT INTO news(id, news, film_id) VALUES(10, 'smth interesting9', 8)


INSERT INTO countries(id, name) VALUES(1, 'Ukraine')
INSERT INTO countries(id, name) VALUES(2, 'France')
INSERT INTO countries(id, name) VALUES(3, 'Germany')
INSERT INTO countries(id, name) VALUES(4, 'UK')
INSERT INTO countries(id, name) VALUES(5, 'USA')
INSERT INTO countries(id, name) VALUES(6, 'Poland')
INSERT INTO countries(id, name) VALUES(7, 'Spain')
INSERT INTO countries(id, name) VALUES(8, 'Italian')
INSERT INTO countries(id, name) VALUES(9, 'Japan')
INSERT INTO countries(id, name) VALUES(10, 'China')
INSERT INTO countries(id, name) VALUES(11, 'Brasil')
INSERT INTO countries(id, name) VALUES(12, 'Sweden')

INSERT INTO cash_collection(id, price, film_id, country_id) VALUES(1, 150000, 3, 2)
INSERT INTO cash_collection(id, price, film_id, country_id) VALUES(2, 200000, 6, 1)
INSERT INTO cash_collection(id, price, film_id, country_id) VALUES(3, 136588, 4, 8)
INSERT INTO cash_collection(id, price, film_id, country_id) VALUES(4, 300000, 10, 5)
INSERT INTO cash_collection(id, price, film_id, country_id) VALUES(5, 450000, 7, 3)
INSERT INTO cash_collection(id, price, film_id, country_id) VALUES(6, 150000, 5, 2)
INSERT INTO cash_collection(id, price, film_id, country_id) VALUES(7, 1500000, 1, 10)
INSERT INTO cash_collection(id, price, film_id, country_id) VALUES(8, 577000, 8, 12)
INSERT INTO cash_collection(id, price, film_id, country_id) VALUES(9, 190000, 9, 11)
INSERT INTO cash_collection(id, price, film_id, country_id) VALUES(10, 744000, 8, 7)
INSERT INTO cash_collection(id, price, film_id, country_id) VALUES(11, 1000000, 3, 11)
INSERT INTO cash_collection(id, price, film_id, country_id) VALUES(12, 445000, 10, 4)


----UPDATE actors 
----SET film_id = 5
----WHERE id = 5
----UPDATE actors 
----SET film_id = 6
----WHERE id = 6
----UPDATE actors 
----SET film_id = 7
----WHERE id = 7
----UPDATE actors 
----SET film_id = 8
----WHERE id = 8
----UPDATE actors 
----SET film_id = 9
----WHERE id = 9
----UPDATE actors 
----SET film_id = 5
----WHERE id = 10
 

CREATE UNIQUE INDEX inex_id
ON films (id)
-------DROP INDEX index_name ON films

CREATE INDEX index_name
ON actors(full_name)


ALTER TABLE actors
ADD CHECK (age>18);


---------------------------------------------------------------


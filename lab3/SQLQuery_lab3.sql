 IF NOT EXISTS 
 (SELECT name FROM master.dbo.sysdatabases 
  WHERE name = N'IMDB')
  CREATE DATABASE[IMDB]
  USE IMDB

  DROP TABLE IF EXISTS filmactors;
  DROP TABLE IF EXISTS filmproducers;
  DROP TABLE IF EXISTS actors;
  DROP TABLE IF EXISTS producers;
  DROP TABLE IF EXISTS reviewers;
  DROP TABLE IF EXISTS raitings;
  DROP TABLE IF EXISTS news;
  DROP TABLE IF EXISTS cash_collection;
  DROP TABLE IF EXISTS films;
  DROP TABLE IF EXISTS countries;



CREATE TABLE films(
	id int PRIMARY KEY,
	name varchar(100) NOT NULL,
	date Date NOT NULL,
);

CREATE TABLE actors(
	id int PRIMARY KEY,
	full_name VARCHAR(250) NOT NULL,
	age int NOT NULL,
	film_exp varchar(250) NULL
);

CREATE TABLE filmactors(
	id int PRIMARY KEY,
	film_id int NOT NULL FOREIGN KEY(film_id) REFERENCES films(id),
	actor_id int NOT NULL FOREIGN KEY(actor_id) REFERENCES actors(id),
)

CREATE TABLE producers(
id int PRIMARY KEY,
name VARCHAR(100) NOT NULL,
age int NOT NULL

)

CREATE TABLE filmproducers(
id int PRIMARY KEY,
film_id int NOT NULL FOREIGN KEY(film_id) REFERENCES films(id),
producer_id int NOT NULL FOREIGN KEY(producer_id) REFERENCES producers(id),
)

CREATE TABLE reviewers(
	id int PRIMARY KEY,
	info varchar(1000) NOT NULL,
	film_id int NOT NULL FOREIGN KEY(film_id) REFERENCES films(id),
)

CREATE TABLE raitings(
	id int PRIMARY KEY,
	raiting int NOT NULL,
	film_id int NOT NULL FOREIGN KEY(film_id) REFERENCES films(id),
)

CREATE TABLE news(
	id int PRIMARY KEY,
	news varchar(1000) NOT NULL,
	film_id int NOT NULL FOREIGN KEY(film_id) REFERENCES films(id),
)

CREATE TABLE countries(
	id int PRIMARY KEY,
	name varchar(100) NOT NULL,
)

CREATE TABLE cash_collection(
	id int PRIMARY KEY,
	price int NOT NULL,
	film_id int NOT NULL FOREIGN KEY(film_id) REFERENCES films(id),
	country_id int NOT NULL FOREIGN KEY (country_id) REFERENCES countries(id),
)

INSERT INTO films(id, name, date) VALUES (1, 'Pirates of Caribian', '2003-12-05');
INSERT INTO films(id, name, date) VALUES (2, 'Rokky', '2004-11-12');
INSERT INTO films(id, name, date) VALUES (3, 'Joker', '2019-04-25');
INSERT INTO films(id, name, date) VALUES (4, 'Pirates of Caribian', '2003-12-05');
INSERT INTO films(id, name, date) VALUES (5, 'Pirates of Caribian2', '2006-11-01');
INSERT INTO films(id, name, date) VALUES (6, 'Rokky1', '2006-11-23');
INSERT INTO films(id, name, date) VALUES (7, 'Joker2', '2019-04-25');
INSERT INTO films(id, name, date) VALUES (8, 'Pirates of Caribian4', '2007-02-05');
INSERT INTO films(id, name, date) VALUES (9, 'Joker6', '2019-04-25');
INSERT INTO films(id, name, date) VALUES (10, 'Pirates of Caribian8', '2011-12-05');



INSERT INTO actors(id, full_name, age,  film_exp) VALUES(1, 'Jonny Depp', 50,  '30 years' );
INSERT INTO actors(id, full_name, age,  film_exp) VALUES(2, 'Ornaldo Bloom', 35,  '7 years');
INSERT INTO actors(id, full_name, age,  film_exp) VALUES(3, 'Joakin Phoenix', 56,  null );
INSERT INTO actors(id, full_name, age,  film_exp) VALUES(4, 'Rianna', 39,  '8 years');
INSERT INTO actors(id, full_name, age,  film_exp) VALUES(7, 'Jonny ', 21, '2 years');
INSERT INTO actors(id, full_name, age,  film_exp) VALUES(6, 'Kevin', 59,  null);
INSERT INTO actors(id, full_name, age, film_exp) VALUES(5, 'Jonny Depp1', 50,  null);
INSERT INTO actors(id, full_name, age,  film_exp) VALUES(8, 'Ornaldo Bloom2', 35,  '30 years');
INSERT INTO actors(id, full_name, age,  film_exp) VALUES(9, 'Joakin Phoenix4', 56,  '31 years');
INSERT INTO actors(id, full_name, age,  film_exp) VALUES(10, 'Rianna3', 39,  '21 years');
INSERT INTO actors(id, full_name, age,  film_exp) VALUES(11, 'Jonny 6', 21,  '6 years');
INSERT INTO actors(id, full_name, age,  film_exp) VALUES(12, 'Kevin7', 59,  '26 years');

INSERT INTO filmactors(id, film_id, actor_id) VALUES(1, 3, 2)
INSERT INTO filmactors(id, film_id, actor_id) VALUES(2, 3, 8)
INSERT INTO filmactors(id, film_id, actor_id) VALUES(3, 1, 3)
INSERT INTO filmactors(id, film_id, actor_id) VALUES(4, 8, 2)
INSERT INTO filmactors(id, film_id, actor_id) VALUES(5, 5, 5)
INSERT INTO filmactors(id, film_id, actor_id) VALUES(6, 1, 2)
INSERT INTO filmactors(id, film_id, actor_id) VALUES(7, 4, 9)
INSERT INTO filmactors(id, film_id, actor_id) VALUES(8, 7, 12)
INSERT INTO filmactors(id, film_id, actor_id) VALUES(9, 6, 11)
INSERT INTO filmactors(id, film_id, actor_id) VALUES(10, 9, 2)
INSERT INTO filmactors(id, film_id, actor_id) VALUES(11, 9, 5)
INSERT INTO filmactors(id, film_id, actor_id) VALUES(12, 3, 11)

INSERT INTO producers(id, name, age) VALUES (1, 'John', 34)
INSERT INTO producers(id, name, age) VALUES (2, 'Felix', 54)
INSERT INTO producers(id, name, age) VALUES (3, 'Jo', 20)
INSERT INTO producers(id, name, age) VALUES (4, 'Dan', 18)
INSERT INTO producers(id, name, age) VALUES (5, 'Ban', 37)
INSERT INTO producers(id, name, age) VALUES (6, 'Joh', 30)
INSERT INTO producers(id, name, age) VALUES (7, 'Julia', 33)
INSERT INTO producers(id, name, age) VALUES (8, 'Keit', 28)
INSERT INTO producers(id, name, age) VALUES (9, 'Rob', 38)
INSERT INTO producers(id, name, age) VALUES (10, 'Ronny', 31)
INSERT INTO producers(id, name, age) VALUES (11, 'Heather', 21)

INSERT INTO filmproducers(id, film_id, producer_id) VALUES (1, 2, 11)
INSERT INTO filmproducers(id, film_id, producer_id) VALUES (2, 8, 3)
INSERT INTO filmproducers(id, film_id, producer_id) VALUES (3, 3, 9)
INSERT INTO filmproducers(id, film_id, producer_id) VALUES (4, 1, 11)
INSERT INTO filmproducers(id, film_id, producer_id) VALUES (5, 6, 4)
INSERT INTO filmproducers(id, film_id, producer_id) VALUES (6, 5, 3)
INSERT INTO filmproducers(id, film_id, producer_id) VALUES (7, 9, 11)
INSERT INTO filmproducers(id, film_id, producer_id) VALUES (8, 10, 10)
INSERT INTO filmproducers(id, film_id, producer_id) VALUES (9, 3, 3)
INSERT INTO filmproducers(id, film_id, producer_id) VALUES (10, 8, 11)
INSERT INTO filmproducers(id, film_id, producer_id) VALUES (11, 1, 3)
INSERT INTO filmproducers(id, film_id, producer_id) VALUES (12, 6, 10)



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

DROP INDEX IF EXISTS [index_name] ON [dbo].[films]
DROP INDEX IF EXISTS [index_date] ON [dbo].[films]

DROP INDEX IF EXISTS [index_name] ON [dbo].[actors]
DROP INDEX IF EXISTS [index_age] ON [dbo].[actors]

DROP INDEX IF EXISTS [index_film_id] ON [dbo].[filmactors]
DROP INDEX IF EXISTS [index_actor_id] ON [dbo].[filmactors]

DROP INDEX IF EXISTS [index_name] ON [dbo].[producers]
DROP INDEX IF EXISTS [index_age] ON [dbo].[producers]

DROP INDEX IF EXISTS [index_film_id] ON [dbo].[filmproducers]
DROP INDEX IF EXISTS [index_producer_id] ON [dbo].[filmproducers]

DROP INDEX IF EXISTS [index_info] ON [dbo].[reviewers]
DROP INDEX IF EXISTS [index_film_id] ON [dbo].[reviewers]

DROP INDEX IF EXISTS [index_raiting] ON [dbo].[raitings]
DROP INDEX IF EXISTS [index_film_id] ON [dbo].[rainings]

DROP INDEX IF EXISTS [index_news] ON [dbo].[news]
DROP INDEX IF EXISTS [index_film_id] ON [dbo].[news]

DROP INDEX IF EXISTS [index_name] ON [dbo].[countries]

DROP INDEX IF EXISTS [index_price] ON [dbo].[cash_collection]
DROP INDEX IF EXISTS [index_film_id] ON [dbo].[cash_collection]



CREATE INDEX index_name ON films(name)
CREATE INDEX index_date ON films(date)

CREATE INDEX index_name ON actors(full_name)
CREATE INDEX index_age ON actors(age)

CREATE INDEX index_film_id ON filmactors(film_id)
CREATE INDEX index_actor_id ON filmactors(actor_id)

CREATE INDEX index_name ON producers(name)
CREATE INDEX index_age ON producers(age)

CREATE INDEX index_film_id ON filmproducers(film_id)
CREATE INDEX index_producer_id ON filmproducers(producer_id)

CREATE INDEX index_info ON reviewers(info)
CREATE INDEX index_film_id ON reviewers(film_id)

CREATE INDEX index_raiting ON raitings(raiting)
CREATE INDEX index_film_id ON raitings(film_id)

CREATE INDEX index_news ON news(news)
CREATE INDEX index_film_id ON news(film_id)

CREATE INDEX index_name ON countries(name)

CREATE INDEX index_price ON cash_collection(price)
CREATE INDEX index_film_id ON cash_collection(film_id)


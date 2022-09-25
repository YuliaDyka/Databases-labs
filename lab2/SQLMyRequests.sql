---- 1. ¬ивести в пор€дку зростанн€ з таблиц≥ [Income] прих≥д дл€ по≥нт 1.
--SELECT Income.inc FROM Income
--WHERE Income.point=1
--ORDER BY inc;

----2. ¬ивед≥ть з таблиц≥ Outcome загальну к≥льк≥сть out за березень м≥с€ць.
--SELECT SUM(Outcome.out) AS OUT_SUM FROM Outcome
--WHERE Outcome.date > '2001-02-28' AND Outcome.date < '2001-04-01'

----3.«найд≥ть виробника, що випускаЇ PC, але не Laptop.
--SELECT Product.maker FROM Product
--WHERE Product.type != 'Laptop' AND Product.type = 'PC'

----4. «найд≥ть виробник≥в PC ≥з швидк≥стю процесора не менше 500 ћ√ц.
--SELECT Product.maker FROM Product
--INNER JOIN PC ON PC.model=Product.model
--WHERE Product.type='PC' AND PC.speed>500

----5. «найд≥ть модел≥ принтер≥в, €к≥ мають найвищу ц≥ну. ¬ивести виробника(maker), модель ≥ ц≥ну.
--SELECT Product.maker, Printer.model, Printer.price FROM Product, Printer
--WHERE Product.model=Printer.model AND Printer.price=(SELECT MAX(Printer.price) FROM Printer)


---- 6.«найд≥ть середню швидк≥сть PC, випущених виробником A.
--SELECT AVG(PC.speed) AS AVG_SPEED FROM PC
--JOIN Product ON Product.model=PC.model
--WHERE Product.maker = 'A'

---- 7.«найд≥ть загальну к≥льк≥сть лазерних пр≥нтер≥в.
--SELECT COUNT(*) AS COUNT_LASER FROM Printer
--WHERE Printer.type='Laser'

---- 8.¬ивед≥ть загальну к≥льк≥сть Laptop, ц≥на €ких перевищуЇ 700 дол.
--SELECT COUNT(*) AS COUNT_PRICE FROM Laptop
--WHERE Laptop.price>700

---- 9.«найд≥ть виробника кольорових принтер≥в.
--SELECT Product.maker FROM Product
--JOIN Printer ON Printer.model=Product.model
--WHERE Printer.color='y'

-- 10. ¬ивести дан≥ про обороти(прих≥д та розх≥д) за кожну дату по вс≥х точках. ¬ивести пол€: Date, Inc, Out
SELECT DISTINCT
CASE
	WHEN Income.date IS NULL THEN Outcome.date 
	ELSE Income.date 
END AS 'Date',
SUM(DISTINCT 
CASE
	WHEN Income.inc IS NULL THEN 0
	ELSE Income.inc
END) AS 'Inc',
SUM(DISTINCT 
CASE 
	WHEN Outcome.out IS NULL THEN 0 
	ELSE Outcome.out
END) AS 'Out'
FROM Income
FULL JOIN Outcome ON Income.date = Outcome.date
GROUP BY Outcome.date, Income.date

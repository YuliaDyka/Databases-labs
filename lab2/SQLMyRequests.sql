---- 1. ������� � ������� ��������� � ������� [Income] ������ ��� ���� 1.
--SELECT Income.inc FROM Income
--WHERE Income.point=1
--ORDER BY inc;

----2. ������� � ������� Outcome �������� ������� out �� �������� �����.
--SELECT SUM(Outcome.out) AS OUT_SUM FROM Outcome
--WHERE Outcome.date > '2001-02-28' AND Outcome.date < '2001-04-01'

----3.������� ���������, �� ������� PC, ��� �� Laptop.
--SELECT Product.maker FROM Product
--WHERE Product.type != 'Laptop' AND Product.type = 'PC'

----4. ������� ��������� PC �� �������� ��������� �� ����� 500 ���.
--SELECT Product.maker FROM Product
--INNER JOIN PC ON PC.model=Product.model
--WHERE Product.type='PC' AND PC.speed>500

----5. ������� ����� ��������, �� ����� ������� ����. ������� ���������(maker), ������ � ����.
--SELECT Product.maker, Printer.model, Printer.price FROM Product, Printer
--WHERE Product.model=Printer.model AND Printer.price=(SELECT MAX(Printer.price) FROM Printer)


---- 6.������� ������� �������� PC, ��������� ���������� A.
--SELECT AVG(PC.speed) AS AVG_SPEED FROM PC
--JOIN Product ON Product.model=PC.model
--WHERE Product.maker = 'A'

---- 7.������� �������� ������� �������� �������.
--SELECT COUNT(*) AS COUNT_LASER FROM Printer
--WHERE Printer.type='Laser'

---- 8.������� �������� ������� Laptop, ���� ���� �������� 700 ���.
--SELECT COUNT(*) AS COUNT_PRICE FROM Laptop
--WHERE Laptop.price>700

---- 9.������� ��������� ���������� ��������.
--SELECT Product.maker FROM Product
--JOIN Printer ON Printer.model=Product.model
--WHERE Printer.color='y'

-- 10. ������� ��� ��� �������(������ �� ������) �� ����� ���� �� ��� ������. ������� ����: Date, Inc, Out
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

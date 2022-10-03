--9. �� �Գ��� ����. ������������. ���������, �� ������ �� ������
--������ �� ������� ����� ������� ���� ����������� ������� �����
--��� �� ���� (���� ������� Income �� Outcome), �������� ����� �� ����-
--�� ��������� ������: point (�����), date (����), inc (������), out
--(������), � ����� � ������� ����� �� ����� ���� ������� ����
--���� ������. (ϳ������: ��������������� ������ 璺������ ��
--�������� CASE)
--USE [Labor_SQL]
SELECT DISTINCT
-- POINT ----
CASE 
	WHEN Income.point IS NULL THEN Outcome.point 
	ELSE Income.point 
END AS 'Point',
-- DATE ----
CASE 
	WHEN Income.date IS NULL THEN Outcome.date 
	ELSE Income.date 
END AS 'Date',
-- Income Sum ----
SUM(DISTINCT
CASE
	WHEN Income.inc IS NULL THEN 0
	ELSE Income.inc
END) AS 'Inc',
-- Outcome Sum ----
SUM(DISTINCT
CASE 
	WHEN Outcome.out IS NULL THEN 0 
	ELSE Outcome.out
END) AS 'Out'
FROM Income
FULL JOIN Outcome ON Income.point = Outcome.point AND Income.date = Outcome.date
GROUP BY Income.date, Outcome.date, Income.point, Outcome.point
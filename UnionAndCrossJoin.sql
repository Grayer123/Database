CREATE TABLE formerEmployees(
id INT,
name VARCHAR(50),
startDate DATETIME,
endDate DATETIME)


CREATE TABLE currentEmployees(
id INT,
name VARCHAR(50),
startDate DATETIME)

SELECT *
	FROM formerEmployees

SELECT *
	FROM currentEmployees

--actually a cross join(equivalent to the query below)
SELECT *
	FROM formerEmployees, currentEmployees	

--cross join
SELECT *
	FROM formerEmployees
	CROSS JOIN currentEmployees

--output all the data from currentEmployees and formerEmployees
SELECT id, name, startDate, NULL AS endDate
	FROM currentEmployees
UNION
SELECT id, name, startDate, endDate
	FROM formerEmployees
SELECT NAME,
	ROUND(SALARY * 0.1,
		2) AS TAX
FROM PEOPLE
WHERE SALARY > 3000;
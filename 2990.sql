SELECT EMPREGADOS.CPF,
	EMPREGADOS.ENOME,
	DEPARTAMENTOS.DNOME
FROM EMPREGADOS,
	DEPARTAMENTOS
WHERE EMPREGADOS.DNUMERO = DEPARTAMENTOS.DNUMERO
	AND EMPREGADOS.CPF NOT IN
		(SELECT TRABALHA.CPF_EMP
			FROM TRABALHA)
ORDER BY EMPREGADOS.CPF;
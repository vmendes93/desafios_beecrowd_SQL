SELECT M.ID,
	M.NAME
FROM MOVIES AS M
INNER JOIN GENRES AS G ON M.ID_GENRES = G.ID
WHERE G.DESCRIPTION = 'Action'
	AND M.ID IN
		(SELECT DISTINCT MA.ID_MOVIES
			FROM MOVIES_ACTORS AS MA
			INNER JOIN ACTORS AS A ON A.ID = MA.ID_ACTORS
			WHERE A.NAME = 'Marcelo Silva'
				OR A.NAME = 'Miguel Silva' );
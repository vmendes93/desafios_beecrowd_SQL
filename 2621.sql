SELECT PRODUCTS.NAME
FROM PRODUCTS
INNER JOIN PROVIDERS ON PROVIDERS.ID = PRODUCTS.ID_PROVIDERS
WHERE PRODUCTS.AMOUNT > 10
	AND PRODUCTS.AMOUNT < 20
	AND PROVIDERS.NAME LIKE 'P%';
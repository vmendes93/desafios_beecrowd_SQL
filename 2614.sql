DROP TABLE IF EXISTS CUSTOMERS,
	RENTALS;


CREATE TABLE CUSTOMERS(ID NUMERIC, NAME VARCHAR (255),
																								STREET VARCHAR (255),
																								CITY VARCHAR (255),
																								PRIMARY KEY(ID));


CREATE TABLE RENTALS(ID NUMERIC, RENTALS_DATE DATE, ID_CUSTOMERS NUMERIC,
																					FOREIGN KEY(ID_CUSTOMERS) REFERENCES CUSTOMERS(ID),
																						PRIMARY KEY (ID));


INSERT INTO CUSTOMERS
VALUES (1, 'Giovanna Goncalves Oliveira','Rua Mato Grosso', 'Canoas'),
							(2, 'Kauã Azevedo Ribeiro', 'Travessa Ibiá', 'Uberlândia'),
							(3, 'Rebeca Barbosa Santos', 'Rua Observatório Meteorológico', 'Salvador'),
							(4, 'Sarah Carvalho Correia', 'Rua Antônio Carlos da Silva', 'Apucarana'),
							(5, 'João Almeida Lima', 'Rua Rio Taiuva', 'Ponta Grossa'),
							(6, 'Diogo Melo Dias', 'Rua Duzentos e Cinqüenta', 'Várzea Grande');


INSERT INTO RENTALS
VALUES (1, '2016-09-10', 3),
							(2, '2016-02-09', 1),
							(3, '2016-02-08', 4),
							(4, '2016-02-09', 2),
							(5, '2016-02-03', 6),
							(6, '2016-04-04', 4);


SELECT CUSTOMERS.NAME,
	RENTALS.RENTALS_DATE
FROM CUSTOMERS
INNER JOIN RENTALS ON CUSTOMERS.ID = RENTALS.ID_CUSTOMERS
WHERE RENTALS.RENTALS_DATE >= '2016-09-01'
	AND RENTALS.RENTALS_DATE <= '2016-09-30';
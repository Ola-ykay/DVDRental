

--NUMBER 1
SELECT COUNT(AMOUNT) AS NO_OF_TRANSACTION FROM PAYMENT
WHERE AMOUNT > 5;

--NUMBER 2
SELECT COUNT(FIRST_NAME) AS NO_OF_ACTORS FROM ACTOR
WHERE FIRST_NAME LIKE 'P%';


--NUMBER 3
SELECT COUNT(DISTINCT DISTRICT) AS NO_OF_DISTRICT
FROM ADDRESS;

--NUMBER 4
SELECT DISTINCT DISTRICT AS NAMES_OF_DISTINCT_DISTRICT
FROM ADDRESS;


--NUMBER 5
SELECT COUNT(TITLE) AS TITLE_OF_TRUMAN_FILMS FROM FILM
WHERE TITLE LIKE '%Truman%';

--NUMBER 6
CREATE TABLE POTENTIAL_LEADS(
ID INT PRIMARY KEY,
FIRST_NAME VARCHAR(15) NOT NULL,
LAST_NAME VARCHAR(15) NOT NULL,
EMAIL VARCHAR(50) UNIQUE,
SIGNUP_DATE DATE NOT NULL,
NUMBER_OF_MINUTES TIME NOT NULL
);

INSERT INTO POTENTIAL_LEADS (ID, FIRST_NAME, LAST_NAME,EMAIL, SIGNUP_DATE, NUMBER_OF_MINUTES)
VALUES
(001, 'ADE', 'OJO', 'OJO11@GMAIL.COM', '2021-01-10', 20),
(002, 'OLUSEGUN', 'AJAYI', 'SEGUNAJAYI@GMAIL.COM', '2021-01-13', 30),
(003, 'PELUMI', 'ADEKUNLE', 'PELUMI12@GMAIL.COM', '2021-01-17', 25),
(004, 'TOPE', 'SUPO', 'TOPE@GMAIL.COM', '2021-01-18', 15)
;

SELECT * FROM POTENTIAL_LEADS;

--NUMBER 7
SELECT FIRST_NAME, ADDRESS_ID FROM CUSTOMER
WHERE FIRST_NAME LIKE 'E%' AND ADDRESS_ID < 500
ORDER BY CUSTOMER_ID DESC;

--NUMBER 8
SELECT CUSTOMER_ID FROM PAYMENT
WHERE STAFF_ID = 2
GROUP BY CUSTOMER_ID
HAVING SUM(AMOUNT) >= 110;

--NUMBER 9
SELECT COUNT(TITLE) FROM FILM
WHERE RATING = 'R'
AND REPLACEMENT_COST BETWEEN 5 AND 15;

--NUMBER 10
SELECT CUSTOMER_ID, MAX(AMOUNT) FROM PAYMENT
GROUP BY CUSTOMER_ID
ORDER BY MAX(AMOUNT) DESC;


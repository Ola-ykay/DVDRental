## PostgreSQL Queries for DVD Rental Analysis  

### Overview  
This project contains a collection of SQL queries designed to analyze a DVD rental database. The queries help retrieve insights such as payment transactions, actor details, customer locations, and film data.  

## #Queries  

### 1. Count of Payment Transactions Greater Than $5.00  
```sql
SELECT COUNT(AMOUNT) AS NO_OF_TRANSACTION FROM PAYMENT
WHERE AMOUNT > 5;
```

### 2. Count of Actors with First Names Starting with "P"  
```sql
SELECT COUNT(FIRST_NAME) AS NO_OF_ACTORS FROM ACTOR
WHERE FIRST_NAME LIKE 'P%';
```

### 3. Number of Unique Customer Districts  
```sql
SELECT COUNT(DISTINCT DISTRICT) AS NO_OF_DISTRICT
FROM ADDRESS;
```

### 4. List of Unique Districts  
```sql
SELECT DISTINCT DISTRICT AS NAMES_OF_DISTINCT_DISTRICT
FROM ADDRESS;
```

### 5. Count of Films with "Truman" in the Title  
```sql
SELECT COUNT(TITLE) AS TITLE_OF_TRUMAN_FILMS FROM FILM
WHERE TITLE LIKE '%Truman%';
```

### 6. Creating a Table for Potential Leads  
```sql
CREATE TABLE POTENTIAL_LEADS(
ID INT PRIMARY KEY,
FIRST_NAME VARCHAR(15) NOT NULL,
LAST_NAME VARCHAR(15) NOT NULL,
EMAIL VARCHAR(50) UNIQUE,
SIGNUP_DATE DATE NOT NULL,
NUMBER_OF_MINUTES TIME NOT NULL
);
```

### 7. Customer with the Highest Customer ID (Starting with 'E' and Address ID < 500)  
```sql
SELECT FIRST_NAME, ADDRESS_ID FROM CUSTOMER
WHERE FIRST_NAME LIKE 'E%' AND ADDRESS_ID < 500
ORDER BY CUSTOMER_ID DESC;
```

### 8. Customer IDs of Those Who Spent at Least $110 with Staff ID 2  
```sql
SELECT CUSTOMER_ID FROM PAYMENT
WHERE STAFF_ID = 2
GROUP BY CUSTOMER_ID
HAVING SUM(AMOUNT) >= 110;
```

### 9. Count of Films Rated "R" with Replacement Cost Between $5 and $15  
```sql
SELECT COUNT(TITLE) FROM FILM
WHERE RATING = 'R'
AND REPLACEMENT_COST BETWEEN 5 AND 15;
```

### 10. Maximum Payment Transaction by a Customer  
```sql
SELECT CUSTOMER_ID, MAX(AMOUNT) FROM PAYMENT
GROUP BY CUSTOMER_ID
ORDER BY MAX(AMOUNT) DESC;
```

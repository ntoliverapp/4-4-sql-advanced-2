-- Update
-- 1. Find all customers with fax numbers and set those numbers to null.
SELECT * FROM customer
LIMIT 5;
UPDATE customer
SET fax = Null;
SELECT * FROM customer
LIMIT 5;

-- 2. Find all customers with no company (null) and set their company to “Self”.
SELECT * FROM customer
WHERE company IS Null
LIMIT 5;

UPDATE customer
SET company = 'Self'
WHERE company IS Null;


SELECT * FROM customer;

-- 3. Find the customer Julia Barnett and change her last name to Thompson.
SELECT * FROM customer
WHERE first_name = 'Julia'
;

UPDATE customer
SET last_name = 'Thompson'
Where customer_id=28;

SELECT * FROM customer
WHERE first_name = 'Julia'
;
-- 4. Find the customer with this email luisrojas@yahoo.cl and change his support rep to 4.
SELECT * FROM customer
WHERE email = 'luisrojas@yahoo.cl';

UPDATE customer
SET support_rep_id = 4;

SELECT * FROM customer
WHERE email = 'luisrojas@yahoo.cl';
-- 5. Find all tracks that are the genre Metal and have no composer. Set the composer to “The darkness around us”.
SELECT * FROM track
WHERE composer IS NULL AND genre_id IN(
SELECT genre_id FROM genre 
WHERE name = 'Metal');

UPDATE track
SET composer = 'The darkness around us'
;

SELECT * FROM track
LIMIT 10;
-- 6. Refresh your page to remove all database changes.
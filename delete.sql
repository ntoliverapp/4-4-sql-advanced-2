-- ### **Delete**

-- **Deleting is DANGEROUS!**

-- Always do a select before a delete to make sure you get back exactly what you want and only what you want to delete!

-- Since we cannot delete anything from the pre-defined tables ( foreign key restraints ), use the following SQL code to create a dummy table:

-- **CREATE TABLE animals (**id SERIAL PRIMARY KEY, name VARCHAR(50), type TEXT, age INTEGER
-- );

-- INSERT INTO animals ( name, type, age ) VALUES (‘Leo’, ‘lion’, 12), (‘Jerry’, ‘mouse’, 4), (‘Marty’, ‘zebra’, 10), (‘Gloria’, ‘hippo’, 8), (‘Alex’, ‘lion’, 9), (‘Melman’, ‘giraffe’, 15), (‘Nala’, ‘lion’, 2), (‘Marie’, ‘cat’, 1), (‘Flounder’, ‘fish’, 8);

--SELECT * FROM animals;

-- 1. Copy, paste, and run the SQL code from the summary.
CREATE TABLE animals(
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    type TEXT, 
    age INTEGER
);

INSERT INTO animals 
(name, type, age )
VALUES 
('Leo', 'lion', 12), 
('Jerry', 'mouse', 4), 
('Marty', 'zebra', 10), 
('Gloria', 'hippo', 8), 
('Alex', 'lion', 9), 
('Melman', 'giraffe', 15), 
('Nala', 'lion', 2), 
('Marie', 'cat', 1),
('Flounder', 'fish', 8);

SELECT * FROM animals;
-- 2. Delete all ***‘lion’*** entries from the table.

SELECT * FROM animals;

DELETE FROM animals
WHERE type = 'lion';

SELECT * FROM animals;
-- 3. Delete all animals whose names start with “M”.
SELECT * FROM animals;

DELETE FROM animals
WHERE name LIKE 'M%';

SELECT * FROM animals;
-- 4. Delete all entries whose age is less than 9.
SELECT * FROM animals;

DELETE FROM animals
WHERE age < 9;

SELECT * FROM animals;
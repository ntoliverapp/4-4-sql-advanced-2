-- ****Intermediate - Alter Table****
-- 1. Copy, paste, and run the insert statement from the animal section in delete.sql. 
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

-- 2. Add a column to the animals table called “location”. It should have a VARCHAR data type.
ALTER TABLE animals
ADD location VARCHAR(50);

SELECT * FROM animals;
-- 3. Insert 3 new animals into the table – make sure none of their fields are null.
INSERT INTO animals 
(name, type, age, location)
VALUES 
('Garfield', 'cat', 6, 'by the Fridge'), 
('Scooby Doo', 'dog', 8, 'Mystery Machine'), 
('Stuart Little', 'mouse', 5,'Littles Home');

SELECT * FROM animals;
-- 4. Change the “type” column’s name to be “species”.
SELECT * FROM animals;

ALTER TABLE animals

RENAME COLUMN type TO species;

SELECT * FROM animals;
-- 5. Change the “species” column data type to be VARCHAR.

-- ****Intermediate - Group By****
-- 1. Find a count of how many tracks there are per genre. Display the genre name with the count.
-- 2. Find a count of how many tracks are the ***“Pop”*** genre and how many tracks are the ***“Rock”*** genre.
-- 3. Find a list of all artists and how many albums they have.
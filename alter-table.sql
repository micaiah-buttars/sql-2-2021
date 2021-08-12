-- ALTER TABLE 1
DROP TABLE IF EXISTS animals;

CREATE TABLE animals (
id SERIAL PRIMARY KEY,
name VARCHAR(50),
type TEXT,
age INTEGER
);

INSERT INTO animals ( name, type, age )
VALUES ('Leo', 'lion', 12),
('Jerry', 'mouse', 4),
('Marty', 'zebra', 10), 
('Gloria', 'hippo', 8),
('Alex', 'lion', 9),
('Melman', 'giraffe', 15),
('Nala', 'lion', 2),
('Marie', 'cat', 1),
('Flounder', 'fish', 8);

-- ALTER TABLE 2
ALTER TABLE animals
ADD COLUMN location VARCHAR(50);

-- ALTER TABLE 3
INSERT INTO animals (name, type, age, location)
VALUES ('Smaug', 'cat', 8, 'West Jordan'), 
('Fargo', 'cat', 7, 'West Jordan'), 
('Harvey', 'cat', 7, 'Sugarhouse');

-- ALTER TABLE 4
ALTER TABLE animals
RENAME COLUMN type TO 'species';

-- ALTER TABLE 5
ALTER TABLE animals
SET DATA TYPE VARCHAR(50);
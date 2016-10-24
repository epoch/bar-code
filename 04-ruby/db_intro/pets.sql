CREATE DATABASE my_pets;

CREATE TABLE pets (
  id SERIAL4 PRIMARY KEY,
  name TEXT,
  age INTEGER,
  dead BOOLEAN
);

-- reading 
SELECT * FROM pets;
SELECT name FROM pets;

-- writing
INSERT INTO pets (id, name, age, dead) VALUES (1, 'fluffy', 5, true);

INSERT INTO pets (id, name, age, dead) VALUES (2, 'Gigantor', 2, true);

INSERT INTO pets VALUES (3, 'gumby', 6, false);
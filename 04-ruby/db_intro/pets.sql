CREATE DATABASE my_pets;

CREATE TABLE pets (
  id INTEGER PRIMARY KEY,
  name TEXT,
  age INTEGER,
  dead BOOLEAN
);

SELECT * FROM pets;
SELECT name FROM pets;

INSERT INTO pets (id, name, age, dead) VALUES (1, 'fluffy', 5, true);
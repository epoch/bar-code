CREATE DATABASE guestbook;

CREATE TABLE guests (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(300),
  email VARCHAR(300),
  comment TEXT
);

INSERT INTO guests (name, email, comment) VALUES ('barcode', 'barcode@ga.co', 'wicked site');

INSERT INTO guests (name, email, comment) VALUES ('remorse code', '', 'remorse code rocks');

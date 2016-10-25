CREATE DATABASE goodfoodhunting;

CREATE TABLE dishes (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(400),
  image_url TEXT
);

INSERT INTO dishes (name, image_url) 
VALUES ('rips', 'http://resources3.news.com.au/images/2014/03/06/1226846/697575-0c133ed8-a369-11e3-9d32-3d2093abcd90.jpg');
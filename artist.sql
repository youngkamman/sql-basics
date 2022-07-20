
-- Add 3 new artists to the artist table. (It already exists.)

INSERT INTO artist(name)
VALUES('50cent'),
('usher'),
('2pac');




-- Select 10 artists in reverse alphabetical order.


SELECT name
FROM artist
ORDER BY name DESC;



-- Select 5 artists in alphabetical order.


SELECT name
FROM artist
ORDER BY name ASC
LIMIT 5;





-- Select all artists that start with the word ‘Black’.


SELECT name FROM artist WHERE name LIKE 'Black%';





-- Select all artists that contain the word ‘Black’.

SELECT * FROM artist WHERE name LIKE '%Black%';



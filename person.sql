


-- Create a table called person that records a person’s id, name, age, height (in cm , city, favorite_color. id should be an auto-incrementing id/primary key (use type: SERIAL)   



CREATE TABLE person (
    id SERIAL PRIMARY KEY,
    name VARCHAR(30),
    AGE INT,
    height float,
    city  VARCHAR(10),
    favorite_color VARCHAR(10)
    
);




-- Add 5 different people into the person database. Remember to not include the person_id because it should auto-increment.


INSERT INTO person(name,age,height,city,favorite_color)
VALUES('james',43,152.4,'detroit','blue'),
('michael', 56, 179.8,'LA','purple'),
('Robert', 24, 182.8, 'detroit', 'green' ),
('Patricia', 34, 164.5, 'boston', 'red'),
('Matthew', 44,  198.1, 'newyork', 'yellow');






-- Select all the people in the person table by height from tallest to shortest.


SELECT height, COUNT(*)
FROM person
GROUP BY height
ORDER BY height DESC;





-- Select all the people in the person table by height from shortest to tallest.

SELECT height, COUNT(*)
FROM person
GROUP BY height
ORDER BY height ASC;






-- Select all the people in the person table by age from oldest to youngest.


SELECT age, COUNT(*)
FROM person
GROUP BY age
ORDER BY age DESC;






-- Select all the people in the person table older than age 20.




SELECT age, COUNT(*)
FROM person
GROUP BY age
ORDER BY age > 20;









-- Select all the people in the person table that are exactly 18.


SELECT name FROM Person WHERE age=18;






-- Select all the people in the person table that are less than 20 and older than 30.


SELECT name
FROM Person
WHERE age BETWEEN 20 AND 30;




-- Select all the people in the person table that are not 27 (use not equals).

SELECT name
FROM Person
WHERE age !=27;







-- Select all the people in the person table where their favorite color is not red.

SELECT name
FROM Person
WHERE favorite_color != 'red';




-- Select all the people in the person table where their favorite color is not red and is not blue.

SELECT name
FROM Person
WHERE favorite_color != 'red' AND  favorite_color != 'blue';




-- Select all the people in the person table where their favorite color is orange or green.

SELECT name
FROM Person
WHERE favorite_color = 'orange' AND  favorite_color = 'green';


-- Select all the people in the person table where their favorite color is orange, green or blue (use IN).


SELECT name
FROM Person
WHERE favorite_color In('orange', 'green','blue');



-- Select all the people in the person table where their favorite color is yellow or purple (use IN).

SELECT name
FROM Person
WHERE favorite_color In('yellow','purple');
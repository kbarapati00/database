-- a) Get the title, author, and year for all books from 2022.
SELECT title, author, year FROM longlist WHERE year = 2022;

-- b) Get the title, author, and year for all books written by Willem Anker.
SELECT title, author, year FROM longlist WHERE author = 'Willem Anker';

-- c) Use the NOT keyword to get the title, author, and year of all books that were NOT written in 2020.
SELECT title, author, year FROM longlist WHERE NOT year = 2020;

-- Get the title, author, and year of all books written in 2018 and 2019. Figure out four
-- ways to do this using each of the following keywords:
-- i. OR
-- ii. AND
-- iii. BETWEEN
-- iv. IN
SELECT title, author, year FROM longlist WHERE year = 2018 OR year = 2019;

SELECT title, author, year FROM longlist WHERE year >= 2018 AND year <= 2019;

SELECT title, author, year FROM longlist WHERE year BETWEEN 2018 AND 2019;

SELECT title, author, year FROM longlist WHERE year IN (2018, 2019);


-- Repeat any one of the four above queries, but also limit the results to books in hardcover format.
SELECT title, author, year FROM longlist WHERE year IN (2018, 2019) AND format = 'hardcover';
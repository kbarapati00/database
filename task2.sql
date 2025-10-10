-- a) Write a query, using a subquery, that finds the title and id of all books written by the
-- author with author_id = 12. The name of the title column should be "Books by
-- Author ID 12" and the id should be aliased as "Book ID".

-- 2 a
SELECT title AS "Books by Author ID 12", id AS "Book ID" FROM books WHERE books.id
IN (SELECT book_id FROM authored WHERE author_id = 12);

-- b) Using two subqueries, write a query that gets the title of all books written by Jon
-- Fosse. The alias of the title column should be "Books by Jon Fosse."

-- SELECT title AS "Books by Jon Fosse." FROM books 

--2 b
SELECT title AS "Books by Jon Fosse" FROM books WHERE id IN (SELECT book_id FROM authored WHERE 
author_id IN (SELECT id FROM authors WHERE name='Jon Fosse'));


-- c) Write a query (with a subquery) to get the ID of the author with the largest number of
-- books in the database. See the screenshot in the results folder for the required
-- names of the columns.

-- 1 c
SELECT MAX(books_count) AS "Most Books", author_id FROM (SELECT COUNT(author_id) AS books_count, author_id FROM authored GROUP BY author_id);



-- d) Your next task is to write a series of queries to get the name of the author with the
-- most books. You've already done some of this work in the previous task; now you
-- just have to look up the ID in the authors table! An easy way to do this is to create a
-- temporary table to store the ID of the author, and then use that temporary table in
-- a separate query to get the name.
-- • Start by creating a temporary table like this:
-- CREATE TEMP TABLE IF NOT EXISTS "MostBooks" AS
-- <query to get the ID of the author with the most books>
-- The "IF NOT EXISTS" part prevents query from being run if the table name
-- already exists.
-- • Congrats! You now have a temporary table called MostBooks, from which
-- you can query the ID of the author with the most books. Now figure out how
-- to use this temp table to query the name of the author with the most books.

-- 2 -d


CREATE TEMP TABLE IF NOT EXISTS "MostBooks" AS 
SELECT author_id FROM (SELECT MAX(books_count) AS "Most Books", author_id FROM (SELECT COUNT(author_id) AS books_count, author_id FROM authored GROUP BY author_id));


SELECT name AS "Author with Most Books" FROM authors WHERE id IN ( SELECT author_id FROM MostBooks );
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

SELECT id FROM authors;

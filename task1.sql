-- a) Write a query that calculates the average rating (with a column name
-- "average_rating") of each book and orders the results from highest to lowest rating.
-- The average should be calculated to one decimal point.

-- 1 a
SELECT book_id, ROUND(AVG(rating), 1) AS "average_rating" FROM ratings GROUP BY book_id ORDER BY average_rating DESC;

--1 b) Redo the above query, but limit the results to only books with a rating of 4.0 or
-- higher.

-- 1 b
SELECT book_id, ROUND(AVG(rating), 1) AS "average_rating" FROM ratings GROUP BY book_id HAVING average_rating>=4.0 ORDER BY average_rating DESC;

-- c) Write a query that returns a table with a single column called "Best Books". The
--    values of this column should be the titles (in any order) of all books with rating
--    greater than 4.0. Do this with a single query, using subqueries by following these
--    steps:
-- -        First, as you did above, select all books with an average rating greater than
--          4.0 (but agnostic of order). Give these results a table alias of best_books.
-- -        From the best_books results, select only the book IDs.
-- -        Now select the title from the books table, using the above query result
--          within your WHERE clause. Since you're trying to match one book ID (from
--          the books table) with potentially many book IDs (from the best_books
--          result set) you'll have to use the IN keyword.


-- 1 c
SELECT title FROM books WHERE books.id IN (SELECT book_id FROM (SELECT book_id, ROUND(AVG(rating), 1) AS "average_rating" 
FROM ratings GROUP BY book_id HAVING average_rating >= 4.0) AS "best_books");
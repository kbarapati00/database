-- 4 Grouping by identical values within a column is very powerful, but what if we want to group
-- by ranges of values instead of distinct values? Figure out how to use the CASE clause to
-- count the number of books that are short (less than 200 pages), medium (between 200
-- and 500 pages) and long (greater than 500 pages). Here's a reference for CASE:
-- https://www.sqlitetutorial.net/sqlite-case/

-- 4

SELECT
  COUNT(pages) AS "number_of_books",
  CASE
    WHEN pages < 200 THEN 'short'
    WHEN pages BETWEEN 200 AND 500 THEN 'medium'
    ELSE 'long'
  END AS "book_length"
FROM books GROUP BY book_length;
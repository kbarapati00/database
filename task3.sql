-- a) Using set operations (like UNION, INTERSECT, and EXCEPT) figure out how to get all
-- authors who are also translators. The name of the column in the result set should
-- be "Author and Translator".

-- 3 a

SELECT name AS "Author and Translator" FROM authors
INTERSECT
SELECT name FROM translators;


-- b) Using set operations, get all professionals who are either an author OR a translator,
-- but not both. The column name should be "Professionals With Only One Job" (or
-- feel free to come up with a better name if you can). Hint: your first instinct may be to
-- prescribe the order of operations using parenthesis ( ), but this won't work. Instead,
-- you can select from the result of a set operation like this:
-- SELECT * FROM (
-- Query A
-- INTERSECT
-- Query B);
-- To check your answer: the results should have all authors and all translators
-- EXCEPT the one in the result set of the following task.

-- 3 b


SELECT name AS "Professionals With Only One Job" FROM (
    SELECT name FROM authors
    UNION 
SELECT name FROM translators) EXCEPT 
    SELECT name FROM ( 
    SELECT name FROM authors
        INTERSECT
    SELECT name FROM translators );

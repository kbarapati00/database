-- a) Select the author name, book title, and ISBN number.
SELECT author, title, isbn from longlist;


-- b) Repeat the above query but figure out how to get only four rows, instead of all rows.
SELECT author, title, isbn from longlist LIMIT 4;

-- c) Select the author name, book title, and ISBN number, but figure out how to order the results in ascending order of ISBN number.
SELECT author, title, isbn from longlist ORDER BY isbn ASC;

-- d) Repeat the above query but figure out how to limit the results to only the first 4 smallest ISBN numbers.
SELECT author, title, isbn from longlist ORDER BY isbn ASC LIMIT 4;

-- e) Repeat the above query but figure out how to only get the books with the 3rd to 6th lowest ISBN numbers. (Hint: use the OFFSET keyword.)
SELECT author, title, isbn from longlist ORDER BY isbn ASC LIMIT 4 OFFSET 2;

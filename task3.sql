-- Get the title and publisher of all books published by a publisher with 'Press' somewhere in their name.

SELECT title, publisher FROM longlist WHERE publisher LIKE '%Press%';

-- b) Using the OR keyword, get the title and publisher of all books with the word "Live" or "Love" in the title.
SELECT title, publisher FROM longlist WHERE title LIKE '%Live%' OR title LIKE '%Love%';


-- c) Figure out how to use the _ operator to complete the above query without using the OR keyword.
SELECT title, publisher FROM longlist WHERE title LIKE '%L_ve%';
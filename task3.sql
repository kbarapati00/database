-- Get the title and publisher of all books published by a publisher with 'Press' somewhere in their name.

SELECT title, publisher FROM longlist WHERE publisher LIKE '%Press%';

-- b) Using the OR keyword, get the title and publisher of all books with the word "Live" or "Love" in the title.

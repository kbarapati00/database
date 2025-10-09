DROP VIEW IF EXISTS books_with_author;


SELECT books.title, authors.name FROM books
JOIN authored ON books.id = authored.book_id
JOIN authors ON authored.author_id = authors.id
WHERE authors.name = 'Olga Tokarczuk';


CREATE VIEW books_with_author AS 
    SELECT books.title, authors.name FROM books
    JOIN authored ON books.id = authored.book_id
    JOIN authors ON authored.author_id = authors.id
    WHERE authors.name ='Olga Tokarczuk';



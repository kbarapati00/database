--  - Create a new file called create-table.sql that creates a new table called movies
-- with the following columns and appropriate data types:
-- o the name of the movie;
-- o the director of the movie;
-- o the year the movie was released;
-- o the genre of the movie.

DROP TABLE IF EXISTS movies;

CREATE TABLE movies (
    name TEXT,
    director TEXT,
    year INTEGER,
    genre TEXT
);
-- comparing operators
SELECT * FROM Books WHERE published_year > 1950;

-- agregate
SELECT COUNT(*) AS total_books, AVG(published_year) AS avg_year FROM Books;

-- IN
SELECT * FROM Authors WHERE country IN ('United Kingdom', 'USA');

-- BETWEEN
SELECT * FROM Books WHERE published_year BETWEEN 1900 AND 2000;

-- LIKE
SELECT * FROM Books WHERE title LIKE '%The%';

-- OPERATOR IS NULL
SELECT * FROM Borrowings WHERE return_date IS NULL;

-- SORT
SELECT * FROM Authors ORDER BY birth_year ASC;

-- GROUP
SELECT author_id, COUNT(*) AS books_written FROM Books GROUP BY author_id;

-- HAVING
SELECT author_id, COUNT(*) AS books_written
FROM Books
GROUP BY author_id
HAVING COUNT(*) > 1;

-- selecting from some tables with alias
SELECT b.title, a.name AS author, g.name AS genre
FROM Books AS b
JOIN Authors AS a ON b.author_id = a.id
LEFT JOIN Genres AS g ON b.genre_id = g.id;
